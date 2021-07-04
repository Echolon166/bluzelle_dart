// Project imports:
import 'package:bluzelle_dart/src/client_lib/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

class SdkOptions {
  Wallet wallet;
  int maxGas;
  double gasPrice;

  SdkOptions({
    required this.wallet,
    required this.maxGas,
    required this.gasPrice,
  });
}

class Sdk<Q, M> {
  Q q;
  // TODO: M m;
  String address;
  String url;
  // TODO: Function withTransaction;

  Sdk({
    required this.q,
    // required this.m,
    required this.address,
    required this.url,
    // required this.withTransaction,
  });
}

Sdk<Q, M> sdk<Q, M>({
  required SdkOptions options,
  required Function qApi,
  // required Function mApi,
}) {
  final tendermint34Client = options.wallet.networkInfo.tendermint34Client;

  final qClient = QueryClient(tendermint34Client);
  // final mClient

  return Sdk<Q, M>(
    q: qApi(qClient),
    // m: await mApi(mClient),
    address: options.wallet.bech32Address,
    url: options.wallet.networkInfo.url,
  );
}
