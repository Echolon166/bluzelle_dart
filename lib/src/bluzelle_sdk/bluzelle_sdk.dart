// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/bluzelle_sdk/export.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

typedef DatabaseSdk = Sdk<crud.QueryApi, crud.MsgApi>;

class BluzelleSdk {
  DatabaseSdk db;

  BluzelleSdk({required this.db});
}

BluzelleSdk bluzelle({
  required String? mnemonic,
  required String host,
  int? port,
  required int maxGas,
  required double gasPrice,
}) {
  final networkInfo = port == null
      ? NetworkInfo.fromHost(host: host)
      : NetworkInfo.fromHostAndPort(
          host: host,
          port: port,
        );

  final wallet = Wallet.derive(
    mnemonic: mnemonic?.split(' ') ?? [],
    networkInfo: networkInfo,
  );

  final fee = Fee();
  fee.gasLimit = maxGas.toInt64();
  fee.amount.add(
    Coin(
      denom: 'ubnt',
      amount: ((maxGas * gasPrice).toInt()).toString(),
    ),
  );

  final DatabaseSdk db = sdk<crud.QueryApi, crud.MsgApi>(
    wallet: wallet,
    fee: fee,
    qApi: newCrudQueryApi,
    mApi: newCrudMsgApi,
  );

  return BluzelleSdk(db: db);
}

crud.QueryApi newCrudQueryApi(pb.RpcClient rpc) => crud.QueryApi(rpc);
crud.MsgApi newCrudMsgApi(pb.RpcClient rpc) => crud.MsgApi(rpc);
