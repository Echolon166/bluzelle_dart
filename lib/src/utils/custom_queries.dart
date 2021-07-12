// Project imports:
import 'package:bluzelle/src/clients/export.dart';
import 'package:bluzelle/src/tendermint_rpc/export.dart';
import 'package:bluzelle/src/types/export.dart';

import 'package:bluzelle/src/codec/cosmos/auth/v1beta1/export.dart' as auth;

/// Reads the account data and retrieves the details of the account
///   having the given [address] from it.
/// If no account with the specified [address] is found,
///   returns `null` instead.
Future<BaseAccount?> getAccountData({
  required Tendermint34Client tendermint34Client,
  required String address,
}) async {
  final queryClient = QueryClient(tendermint34Client: tendermint34Client);
  final queryApi = auth.QueryApi(queryClient);

  final request = QueryAccountRequest(address: address);
  final response = await queryApi
      .account(null, request)
      .onError((_, __) => QueryAccountResponse());
  if (!response.hasAccount()) {
    return null;
  }

  final account = BaseAccount.fromBuffer(response.account.value);

  return account.address == address ? account : null;
}
