// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
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
  /// Signed transaction will be broadcasted via
  ///   [Tendermint34Client.broadcastTxSync()].
  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    // Build and sign the transaction.
    final signedTx = await TxSigner().createAndSign(
      wallet: _wallet,
      msgs: [request],
      fee: fee,
    );

    // Broadcast the signed transaction.
    await _wallet.networkInfo.tendermint34Client
        .broadcastTxSync(tx: signedTx.writeToBuffer());

    return emptyResponse;
  }
}
