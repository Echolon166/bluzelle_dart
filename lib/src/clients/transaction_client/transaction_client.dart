// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/transactions/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

/// [TransactionClient] acts as a bridge between custom [pb.GeneratedMessage]
///   type transaction requests and [Tendermint34Client.broadcastTxSync].
class TransactionClient extends pb.RpcClient {
  final Wallet _wallet;
  final Fee fee;

  TransactionClient({
    required Wallet wallet,
    required this.fee,
  }) : _wallet = wallet;

  /// Creates [TransactionClient] instance by deriving the [_wallet] from
  ///   given [mnemonic] and [networkInfo]. [fee] is required for
  ///   sending transactions later.
  factory TransactionClient.connect({
    required List<String> mnemonic,
    required NetworkInfo networkInfo,
    required Fee fee,
  }) {
    final newWallet = Wallet.derive(
      mnemonic: mnemonic,
      networkInfo: networkInfo,
    );

    return TransactionClient(
      wallet: newWallet,
      fee: fee,
    );
  }

  void close() {
    _wallet.networkInfo.tendermint34Client.close();
  }

  /// A new transaction will be builded and signed from the given [request].
  /// Broadcasts the signed transaction to the network and monitors its
  ///   inclusion in a block.
  ///
  /// If the transaction is not included in a block before the provided timeout,
  ///   throws an error.
  ///
  /// If the transaction is included in a block, checks for execution success.
  ///   If not successful, throws an error.
  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    Future<bool> pollForTx({required String transactionHash}) async {
      // Query the transaction using its hash.
      final response = await _wallet.networkInfo.tendermint34Client.txSearch(
        query: "tx.hash='$transactionHash'",
        prove: true,
      );

      // If a response with given hash is found, check its code and events.
      //  If code is different than 0, or events is empty, throw an error.
      if (response.totalCount > 0) {
        final txResult = response.txs[0].txResult;
        if (txResult.code != 0 || txResult.events.isEmpty) {
          throw ('$methodName call failed with code ${txResult.code} (log: ${txResult.log}, codespace: ${txResult.codeSpace})');
        }
      }

      return response.totalCount == 0;
    }

    Future<void> waitUntilTransactionInclusion({
      required BroadcastTxSyncResponse response,
      int timeoutMs = 60000,
      int pollIntervalMs = 2000,
    }) async {
      final transactionHash = utf8.decode(response.hash);

      var elapsedMilliseconds = 0;
      while (await pollForTx(transactionHash: transactionHash)) {
        if (elapsedMilliseconds >= timeoutMs) {
          throw ('Transaction with hash $transactionHash was submitted but was not yet found on the chain. You might want to check later.');
        }

        await Future.delayed(Duration(milliseconds: pollIntervalMs));
        elapsedMilliseconds += pollIntervalMs;
      }
    }

    // Build and sign the transaction.
    final signedTx = await TxSigner().createAndSign(
      wallet: _wallet,
      msgs: [request],
      fee: fee,
    );

    // Broadcast the signed transaction.
    final response = await _wallet.networkInfo.tendermint34Client
        .broadcastTxSync(tx: signedTx.writeToBuffer());

    await waitUntilTransactionInclusion(response: response);

    return emptyResponse;
  }
}
