// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/client_lib/export.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;

typedef DatabaseSdk = Sdk<crud.QueryApi, crud.MsgApi>;

class BluzelleSdk {
  DatabaseSdk db;

  BluzelleSdk({required this.db});
}

Future<BluzelleSdk> bluzelle({
  required String? mnemonic,
  required String url,
  required int maxGas,
  required double gasPrice,
}) async {
  final options = SdkOptions(
    mnemonic: mnemonic,
    url: url,
    maxGas: maxGas,
    gasPrice: gasPrice,
  );

  final DatabaseSdk db = await sdk<crud.QueryApi, crud.MsgApi>(
    options: options,
    qApi: newCrudQueryApi,
    //mApi: newCrudMsgApi(rpc),
  );

  return BluzelleSdk(db: db);
}

crud.QueryApi newCrudQueryApi(pb.RpcClient rpc) => crud.QueryApi(rpc);
//crud.MsgApi newCrudMsgApi(pb.RpcClient rpc) => crud.MsgApi(rpc);
