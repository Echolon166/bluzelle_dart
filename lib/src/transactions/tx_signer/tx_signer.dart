// Project imports:
import 'package:bluzelle_dart/src/client_lib/export.dart';
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';

import 'package:bluzelle_dart/src/codec/cosmos/auth/v1beta1/export.dart'
    as auth;

/// Allows to create and sign a [Tx] object so that it can later
///   be sent to the chain.
class TxSigner {
  final Tendermint34Client _tmClient;

  TxSigner({required tmClient}) : _tmClient = tmClient;
}

/// Reads the account data and retrieves the details of the account
///   having the given [address] from it.
/// If no account with the specified [address] is found,
///   returns `null` instead.
Future<BaseAccount?> getAccountData({
  required Tendermint34Client tmClient,
  required String address,
}) async {
  final queryClient = QueryClient(tmClient);
  final queryApi = auth.QueryApi(queryClient);

  final request = QueryAccountRequest(address: address);
  final response = await queryApi.account(null, request);
  if (!response.hasAccount()) {
    return null;
  }

  final account = BaseAccount.fromBuffer(response.account.value);

  // queryClient.close();

  return account.address == address ? account : null;
}
