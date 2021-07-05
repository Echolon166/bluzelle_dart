// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/bluzelle_dart.dart';
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/utils/export.dart';
import 'custom_queries_test.mocks.dart';

@GenerateMocks([Tendermint34Client])
void main() {
  late Tendermint34Client tendermint34Client;

  setUp(() {
    tendermint34Client = MockTendermint34Client();
  });

	final testAddress = 'bluzelle1yv4nlnktwdxljlmsnpfjdt3c02vnlxqa568plg';
	final testData = [10, 47, 98, 108, 117, 122, 101, 108, 108, 101, 49, 121, 118, 52, 110, 108, 110, 107, 116, 119, 100, 120, 108, 106, 108, 109, 115, 110, 112, 102, 106, 100, 116, 51, 99, 48, 50, 118, 110, 108, 120, 113, 97, 53, 54, 56, 112, 108, 103];
	final falseAddressResponseData = [10, 88, 10, 32, 47, 99, 111, 115, 109, 111, 115, 46, 97, 117, 116, 104, 46, 118, 49, 98, 101, 116, 97, 49, 46, 66, 97, 115, 101, 65, 99, 99, 111, 117, 110, 116, 18, 52, 10, 47, 98, 108, 117, 122, 101, 108, 108, 101, 49, 122, 117, 100, 118, 97, 108, 99, 106, 56, 50, 108, 112, 48, 114, 55, 106, 102, 114, 48, 108, 122, 118, 56, 116, 117, 100, 57, 104, 115, 115, 99, 108, 56, 55, 57, 52, 102, 119, 24, 161, 1];
	final correctResponseData = [10, 159, 1, 10, 32, 47, 99, 111, 115, 109, 111, 115, 46, 97, 117, 116, 104, 46, 118, 49, 98, 101, 116, 97, 49, 46, 66, 97, 115, 101, 65, 99, 99, 111, 117, 110, 116, 18, 123, 10, 47, 98, 108, 117, 122, 101, 108, 108, 101, 49, 121, 118, 52, 110, 108, 110, 107, 116, 119, 100, 120, 108, 106, 108, 109, 115, 110, 112, 102, 106, 100, 116, 51, 99, 48, 50, 118, 110, 108, 120, 113, 97, 53, 54, 56, 112, 108, 103, 18, 70, 10, 31, 47, 99, 111, 115, 109, 111, 115, 46, 99, 114, 121, 112, 116, 111, 46, 115, 101, 99, 112, 50, 53, 54, 107, 49, 46, 80, 117, 98, 75, 101, 121, 18, 35, 10, 33, 2, 244, 230, 94, 145, 138, 184, 194, 149, 221, 159, 113, 233, 240, 204, 115, 65, 184, 110, 248, 95, 213, 191, 21, 235, 232, 220, 89, 236, 27, 94, 244, 177, 32, 27];
	final correctPubKeyValue = [10, 33, 2, 244, 230, 94, 145, 138, 184, 194, 149, 221, 159, 113, 233, 240, 204, 115, 65, 184, 110, 248, 95, 213, 191, 21, 235, 232, 220, 89, 236, 27, 94, 244, 177];
  group('getAccountData()', () {
    test('returns null when response does not contain an account.', () async {
      when(tendermint34Client.abciQuery(
        path: '/cosmos.auth.v1beta1.Query/Account',
        data: Uint8List.fromList(testData),
      )).thenAnswer((_) => Future.value(ResponseQuery()));

      final account = await getAccountData(
        tendermint34Client: tendermint34Client,
        address: 'bluzelle1yv4nlnktwdxljlmsnpfjdt3c02vnlxqa568plg',
      );

      expect(account, isNull);
    });

    test('returns null when response does not have same address.', () async {
      when(tendermint34Client.abciQuery(
        path: '/cosmos.auth.v1beta1.Query/Account',
        data: Uint8List.fromList(testData),
      )).thenAnswer((_) => Future.value(
            ResponseQuery(
              code: 0,
              index: 0.toInt64(),
              value: falseAddressResponseData,
              height: 5.toInt64(),
            ),
          ));

      final account = await getAccountData(
        tendermint34Client: tendermint34Client,
        address: testAddress,
      );

      expect(account, isNull);
    });

    test('returns correct account when everything is valid.', () async {
      when(tendermint34Client.abciQuery(
        path: '/cosmos.auth.v1beta1.Query/Account',
        data: Uint8List.fromList(testData),
      )).thenAnswer((_) => Future.value(
            ResponseQuery(
              code: 0,
              index: 0.toInt64(),
              value: correctResponseData,
              height: 5.toInt64(),
            ),
          ));

      final account = await getAccountData(
        tendermint34Client: tendermint34Client,
        address: testAddress,
      );

      expect(account, isNotNull);
      expect(account!.address, testAddress);
      expect(account.pubKey.value, correctPubKeyValue);
      expect(account.sequence, 27.toInt64());
    });
  });
}
