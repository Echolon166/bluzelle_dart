// Project imports:
import 'package:bluzelle/src/clients/export.dart';
import 'package:bluzelle/src/types/export.dart';
import 'package:bluzelle/src/wallet/export.dart';

class Sdk<Q, M> {
  Q q;
  M tx;
  String address;
  String url;
  Function withTransactions;
  Function close;

  Sdk({
    required this.q,
    required this.tx,
    required this.address,
    required this.url,
    required this.withTransactions,
    required this.close,
  });
}

Sdk<Q, M> sdk<Q, M>({
  required Wallet wallet,
  required Fee fee,
  required Function qApi,
  required Function mApi,
}) {
  final qClient = QueryClient.fromNetworkInfo(wallet.networkInfo);
  final mClient = TransactionClient(
    wallet: wallet,
    fee: fee,
  );

  //  Shuts down all RPC connections.
  //  Websocket connections can run indefinitely if not closed properly so be
  //    sure to call .close() at the end of the file.
  //  HTTP connections can shut themselves down so not required for them.
  void close() {
    qClient.close();
    mClient.close();
  }

  return Sdk<Q, M>(
    q: qApi(qClient),
    tx: mApi(mClient),
    address: wallet.bech32Address,
    url: wallet.networkInfo.url,
    withTransactions: mClient.invokeBatch,
    close: close,
  );
}
