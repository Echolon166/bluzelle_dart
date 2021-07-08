// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/utils/export.dart';
import '../test_helpers.dart';

void main() {
  late Tendermint34Client tendermint34Client;

  setUp(() {
    tendermint34Client = Tendermint34Client.connect(
      host: host,
      port: port,
    );
  });

  group('getAccountData()', () {
    test('returns correct account when everything is valid.', () {
      expect(
        getAccountData(
          tendermint34Client: tendermint34Client,
          address: 'bluzelle14gfx2gg35hgna0qpr02z5sullepv4c2vq755ke',
        ).then((account) {
          expect(account, isNotNull);
          expect(
            account!.address,
            'bluzelle14gfx2gg35hgna0qpr02z5sullepv4c2vq755ke',
          );
          expect(account.pubKey.value, [
            10,
            33,
            2,
            106,
            89,
            33,
            30,
            22,
            127,
            193,
            42,
            48,
            111,
            212,
            21,
            30,
            235,
            127,
            18,
            233,
            33,
            13,
            105,
            203,
            169,
            64,
            191,
            68,
            6,
            45,
            63,
            5,
            5,
            12,
            237
          ]);
        }),
        completes,
      );
    });

    test('returns null when response does not contain an account.', () {
      expect(
        getAccountData(
          tendermint34Client: tendermint34Client,
          address: 'wrong_address',
        ).then((resp) => expect(resp, isNull)),
        completes,
      );
    });
  });
}
