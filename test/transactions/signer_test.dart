// Dart imports:
import 'dart:convert';
import 'dart:typed_data';

// Package imports:
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/transactions/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';
import 'signer_test.mocks.dart';

@GenerateMocks([Tendermint34Client, NetworkInfo])
void main() {
  late Tendermint34Client tendermint34Client;
  late NetworkInfo networkInfo;

  setUp(() {
    tendermint34Client = MockTendermint34Client();
    networkInfo = MockNetworkInfo();
  });

  final mnemonic =
      'purpose month upgrade carpet cactus pink private target afford denial luxury club rocket spice test lesson wave skirt identify impose dilemma maximum slogan radar';
  final accountData = [10, 47, 98, 108, 117, 122, 101, 108, 108, 101, 49, 121, 118, 52, 110, 108, 110, 107, 116, 119, 100, 120, 108, 106, 108, 109, 115, 110, 112, 102, 106, 100, 116, 51, 99, 48, 50, 118, 110, 108, 120, 113, 97, 53, 54, 56, 112, 108, 103];
  final accountResponseData = [10, 159, 1, 10, 32, 47, 99, 111, 115, 109, 111, 115, 46, 97, 117, 116, 104, 46, 118, 49, 98, 101, 116, 97, 49, 46, 66, 97, 115, 101, 65, 99, 99, 111, 117, 110, 116, 18, 123, 10, 47, 98, 108, 117, 122, 101, 108, 108, 101, 49, 121, 118, 52, 110, 108, 110, 107, 116, 119, 100, 120, 108, 106, 108, 109, 115, 110, 112, 102, 106, 100, 116, 51, 99, 48, 50, 118, 110, 108, 120, 113, 97, 53, 54, 56, 112, 108, 103, 18, 70, 10, 31, 47, 99, 111, 115, 109, 111, 115, 46, 99, 114, 121, 112, 116, 111, 46, 115, 101, 99, 112, 50, 53, 54, 107, 49, 46, 80, 117, 98, 75, 101, 121, 18, 35, 10, 33, 2, 244, 230, 94, 145, 138, 184, 194, 149, 221, 159, 113, 233, 240, 204, 115, 65, 184, 110, 248, 95, 213, 191, 21, 235, 232, 220, 89, 236, 27, 94, 244, 177, 32, 27];

  test('Tx with fees is created and signed correctly', () async {
    when(networkInfo.tendermint34Client).thenAnswer((_) => tendermint34Client);
    when(networkInfo.bech32Hrp).thenAnswer((_) => 'bluzelle');

    when(tendermint34Client.abciQuery(
      path: '/cosmos.auth.v1beta1.Query/Account',
      data: Uint8List.fromList(accountData),
    )).thenAnswer(
      (_) => Future.value(
        ResponseQuery(
          code: 0,
          index: 0.toInt64(),
          value: accountResponseData,
          height: 5.toInt64(),
        ),
      ),
    );

    when(tendermint34Client.status()).thenAnswer(
      (_) => Future.value(
        StatusResponse(
          nodeInfo: NodeInfo(network: 'curium'),
        ),
      ),
    );

    // Create a wallet.
    final wallet = Wallet.derive(
      mnemonic: mnemonic.split(' '),
      networkInfo: networkInfo,
    );
    expect(wallet.networkInfo, networkInfo);

    // Create the message.
    final message = crud.MsgCreate(
      creator: wallet.bech32Address,
      uuid: 'test',
      key: 'testKey',
      value: utf8.encode('testValue'),
      lease: crud.Lease(hours: 1),
    );

    // Set the fee.
    final fee = Fee();
    fee.gasLimit = 100000000.toInt64();
    fee.amount.add(Coin(denom: 'ubnt', amount: '200000'));

    // Sign the transaction.
    final signedTx = await TxSigner().createAndSign(
      wallet: wallet,
      msgs: [message],
      fee: fee,
    );

    // Verify the signature.
    expect(signedTx.signatures.length, 1);
    expect(
      base64.encode(signedTx.signatures[0]),
      'MuG4SbFOW8sz5sPtTKC1nAVNSuDaFvl1ytQ8cRh2orwZsEZ9zIxnaqEQdxyXE3miWbuSLzW5OLIHYE81AOGwnQ==',
    );
  });
}
