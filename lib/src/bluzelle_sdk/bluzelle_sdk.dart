// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/bluzelle_sdk/export.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

import 'package:bluzelle_dart/src/codec/cosmos/bank/v1beta1/export.dart'
    as bank;

typedef BankSdk = Sdk<bank.QueryApi, bank.MsgApi>;
typedef DatabaseSdk = Sdk<crud.QueryApi, crud.MsgApi>;

class BluzelleSdk {
  DatabaseSdk db;
  BankSdk bank;

  BluzelleSdk({
    required this.db,
    required this.bank,
  });
}

/// Main user facing function which will be used by the user to initiate
///   everything required, and to do queries & send transactions via
///   returned [BluzelleSdk].
BluzelleSdk bluzelle({
  required String? mnemonic,
  required String host,
  int? port,
  required int maxGas,
  required double gasPrice,
}) {
  // Connect to the Tendermint RPC.
  final networkInfo = port == null
      ? NetworkInfo.fromHost(host: host)
      : NetworkInfo.fromHostAndPort(
          host: host,
          port: port,
        );

  // Derive the wallet from the mnemonic.
  final wallet = Wallet.derive(
    mnemonic: mnemonic?.split(' ') ?? [],
    networkInfo: networkInfo,
  );

  // Construct fee variable from given maxGas and gasPrice.
  final fee = Fee();
  fee.gasLimit = maxGas.toInt64();
  fee.amount.add(
    Coin(
      denom: 'ubnt',
      amount: ((maxGas * gasPrice).toInt()).toString(),
    ),
  );

  // Create different sdk's using their respective Api's.
  final DatabaseSdk databaseSdk = sdk<crud.QueryApi, crud.MsgApi>(
    wallet: wallet,
    fee: fee,
    qApi: newCrudQueryApi,
    mApi: newCrudMsgApi,
  );

  final BankSdk bankSdk = sdk<bank.QueryApi, bank.MsgApi>(
    wallet: wallet,
    fee: fee,
    qApi: newBankQueryApi,
    mApi: newBankMsgApi,
  );

  return BluzelleSdk(
    db: databaseSdk,
    bank: bankSdk,
  );
}

crud.QueryApi newCrudQueryApi(pb.RpcClient rpc) => crud.QueryApi(rpc);
crud.MsgApi newCrudMsgApi(pb.RpcClient rpc) => crud.MsgApi(rpc);
bank.QueryApi newBankQueryApi(pb.RpcClient rpc) => bank.QueryApi(rpc);
bank.MsgApi newBankMsgApi(pb.RpcClient rpc) => bank.MsgApi(rpc);
