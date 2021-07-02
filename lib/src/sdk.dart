import 'package:bluzelle_dart/src/client.dart';

class SdkOptions {
  String? mnemonic;
  String url;
  int maxGas;
  double gasPrice;

  SdkOptions({
    this.mnemonic,
    required this.url,
    required this.maxGas,
    required this.gasPrice,
  });
}

class Sdk<Q, M> {
  Q q;
  // TODO: M m;
  // TODO: String address;
  String url;
  // TODO: Function withTransaction;

  Sdk({
    required this.q,
    // required this.m,
    // required this.address,
    required this.url,
    // required this.withTransaction,
  });
}

Future<Sdk<Q, M>> sdk<Q, M>({
  required SdkOptions options,
  required Function qApi,
  // required Function mApi,
}) async {
  final qClient = await QueryClient.connect(options.url);
  // final mClient

  return Sdk<Q, M>(
    q: await qApi(qClient),
    // m: await mApi(mClient),
    // address:
    url: options.url,
  );
}
