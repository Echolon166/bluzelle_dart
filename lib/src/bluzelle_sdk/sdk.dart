// Project imports:
import 'package:bluzelle_dart/src/clients/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

class Sdk<Q, M> {
  Q q;
  M tx;
  String address;
  String url;
  Function withTransactions;

  Sdk({
    required this.q,
    required this.tx,
    required this.address,
    required this.url,
    required this.withTransactions,
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

  return Sdk<Q, M>(
    q: qApi(qClient),
    tx: mApi(mClient),
    address: wallet.bech32Address,
    url: wallet.networkInfo.url,
    withTransactions: mClient.invokeBatch,
  );
}
