// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle/src/tendermint_rpc/export.dart';
import 'package:bluzelle/src/types/export.dart';

void main() {
  group('requests_test:', () {
    group('BroadcastTxSyncRequest', () {
      final broadcastTxSyncRequest =
          BroadcastTxSyncRequest(tx: Uint8List.fromList([1, 2, 3]));

      test('toJson and fromJson works properly.', () {
        final json = broadcastTxSyncRequest.toJson();
        final fromJson = BroadcastTxSyncRequest.fromJson(json);

        expect(fromJson, equals(broadcastTxSyncRequest));
      });

      test('toString works properly.', () {
        final expectedString = 'BroadcastTxSyncRequest { tx: [1, 2, 3] }';

        expect(broadcastTxSyncRequest.toString(), equals(expectedString));
      });
    });

    group('TxSearchRequest', () {
      final txSearchRequest = TxSearchRequest(
        query: 'test',
        prove: false,
        page: 10.toInt64(),
        perPage: 20.toInt64(),
      );
      test('toJson and fromJson works properly.', () {
        final json = txSearchRequest.toJson();
        final fromJson = TxSearchRequest.fromJson(json);

        expect(fromJson, equals(txSearchRequest));
      });

      test('toString works properly.', () {
        final expectedString =
            'TxSearchRequest { query: test, prove: false, page: 10, perPage: 20 }';

        expect(txSearchRequest.toString(), equals(expectedString));
      });
    });
  });
}
