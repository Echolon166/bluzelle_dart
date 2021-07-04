// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/client_lib/export.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/wallet/export.dart';

typedef DatabaseSdk = Sdk<crud.QueryApi, crud.MsgApi>;

class BluzelleSdk {
  DatabaseSdk db;

  BluzelleSdk({required this.db});
}

BluzelleSdk bluzelle({
  required Wallet wallet,
  required int maxGas,
  required double gasPrice,
}) {
  final options = SdkOptions(
    wallet: wallet,
    maxGas: maxGas,
    gasPrice: gasPrice,
  );

  final DatabaseSdk db = sdk<crud.QueryApi, crud.MsgApi>(
    options: options,
    qApi: newCrudQueryApi,
    //mApi: newCrudMsgApi(rpc),
  );

  return BluzelleSdk(db: db);
}

crud.QueryApi newCrudQueryApi(pb.RpcClient rpc) => crud.QueryApi(rpc);
//crud.MsgApi newCrudMsgApi(pb.RpcClient rpc) => crud.MsgApi(rpc);
