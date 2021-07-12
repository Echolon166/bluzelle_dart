// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle/src/tendermint_rpc/export.dart';
import 'package:bluzelle/src/transactions/export.dart';
import 'package:bluzelle/src/types/export.dart';
import 'package:bluzelle/src/wallet/export.dart';

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

  /// [invoke] will be called from Protobuf generated API's to send
  ///   transactions.
  /// To send transactions by hand, or to send batched transactions call
  ///   [invokeBatch] instead.
  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    // For simplicity, we handle all the logic inside [invokeBatch],
    //  this function will only call it, and will add [methodName] at the
    //  start of the error, if there is any.
    await invokeBatch([request])
        .catchError((error) => throw Exception("$methodName $error"));

    return emptyResponse;
  }

  /// A new transaction will be builded and signed from the given [requests].
  ///   Multiple requests will be batched together into one transaction.
  /// Broadcasts the signed transaction to the network and monitors its
  ///   inclusion in a block.
  ///
  /// If the transaction is not included in a block before the provided timeout,
  ///   throws an error.
  ///
  /// If the transaction is included in a block, checks for execution success.
  ///   If not successful, throws an error.
  Future<void> invokeBatch(
    List<pb.GeneratedMessage> requests, {
    String? memo,
  }) async {
    // Build and sign the transaction.
    final signedTx = await TxSigner().createAndSign(
      wallet: _wallet,
      msgs: requests,
      fee: fee,
      memo: memo,
    );

    // Broadcast the signed transaction.
    final response = await _wallet.networkInfo.tendermint34Client
        .broadcastTxSync(tx: signedTx.writeToBuffer());

    // Wait until the transaction is in the block.
    await _waitUntilTransactionInclusion(response: response);
  }

  /// Checks the transaction by calling [Tendermint34Client.txSearch].
  Future<bool> _pollForTx({required String transactionHash}) async {
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
        throw Exception(
            'call failed with code ${txResult.code} (log: ${txResult.log}, codespace: ${txResult.codeSpace})');
      }
    }

    return response.totalCount == 0;
  }

  /// Wait until the transaction is in the block. Checks the transaction by
  ///   calling [_pollForTx] every [pollIntervlaMs] milliseconds.
  /// If [timeoutMs] milliseconds is passed and transaction is still not found,
  ///   throws an error.
  Future<void> _waitUntilTransactionInclusion({
    required BroadcastTxSyncResponse response,
    int timeoutMs = 60000,
    int pollIntervalMs = 2000,
  }) async {
    final transactionHash = utf8.decode(response.hash);

    var elapsedMilliseconds = 0;
    while (await _pollForTx(transactionHash: transactionHash)) {
      if (elapsedMilliseconds >= timeoutMs) {
        throw Exception(
            'Transaction with hash $transactionHash was submitted but was not yet found on the chain. You might want to check later.');
      }

      await Future.delayed(Duration(milliseconds: pollIntervalMs));
      elapsedMilliseconds += pollIntervalMs;
    }
  }
}
