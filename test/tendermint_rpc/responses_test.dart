// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle/src/tendermint_rpc/export.dart';

void main() {
  group('responses_test:', () {
    group('StatusResponse', () {
      final statusResponse =
          StatusResponse(nodeInfo: NodeInfo(network: 'test'));

      test('toJson and fromJson works properly.', () {
        final json = statusResponse.toJson();
        final fromJson = StatusResponse.fromJson(json);

        expect(fromJson, equals(statusResponse));
      });

      test('toString works properly.', () {
        final expectedString =
            'StatusResponse { nodeInfo: NodeInfo { network: test } }';

        expect(statusResponse.toString(), equals(expectedString));
      });
    });

    group('NodeInfo', () {
      final nodeInfo = NodeInfo(network: 'test');

      test('toJson and fromJson works properly.', () {
        final json = nodeInfo.toJson();
        final fromJson = NodeInfo.fromJson(json);

        expect(fromJson, equals(nodeInfo));
      });

      test('toString works properly.', () {
        final expectedString = 'NodeInfo { network: test }';

        expect(nodeInfo.toString(), equals(expectedString));
      });
    });

    group('BroadcastTxSyncResponse', () {
      final broadcastTxSyncResponse =
          BroadcastTxSyncResponse(hash: Uint8List.fromList([1, 2, 3]));
      test('toJson and fromJson works properly.', () {
        final json = broadcastTxSyncResponse.toJson();
        final fromJson = BroadcastTxSyncResponse.fromJson(json);

        expect(fromJson, equals(broadcastTxSyncResponse));
      });

      test('toString works properly.', () {
        final expectedString = 'BroadcastTxSyncResponse { hash: [1, 2, 3] }';

        expect(broadcastTxSyncResponse.toString(), equals(expectedString));
      });
    });

    group('TxSearchResponse', () {
      final txSearchResponse = TxSearchResponse(
        txs: [
          TxResponse(
              hash: Uint8List.fromList([1]),
              txResult: TxResult(code: 5, log: 'test', events: []),
              tx: Uint8List.fromList([2, 3])),
          TxResponse(
              hash: Uint8List.fromList([4, 5]),
              txResult: TxResult(code: 5, codeSpace: 'testspace', events: []),
              tx: Uint8List.fromList([6])),
        ],
        totalCount: 1,
      );

      test('toJson and fromJson works properly.', () {
        final json = txSearchResponse.toJson();
        final fromJson = TxSearchResponse.fromJson(json);

        expect(fromJson, equals(txSearchResponse));
      });

      test('toString works properly.', () {
        final expectedString =
            'TxSearchResponse { txs: [TxResponse { hash: [1], txResult: TxResult { code: 5, log: test, codeSpace: null, events: [] }, tx: [2, 3] }, TxResponse { hash: [4, 5], txResult: TxResult { code: 5, log: null, codeSpace: testspace, events: [] }, tx: [6] }], totalCount: 1, }';

        expect(txSearchResponse.toString(), equals(expectedString));
      });
    });

    group('TxResponse', () {
      final txResponse = TxResponse(
        hash: Uint8List.fromList([1, 2, 3]),
        txResult: TxResult(code: 5, log: 'test', events: []),
        tx: Uint8List.fromList([4, 5, 6]),
      );
      test('toJson and fromJson works properly.', () {
        final json = txResponse.toJson();
        final fromJson = TxResponse.fromJson(json);

        expect(fromJson, equals(txResponse));
      });

      test('toString works properly.', () {
        final expectedString =
            'TxResponse { hash: [1, 2, 3], txResult: TxResult { code: 5, log: test, codeSpace: null, events: [] }, tx: [4, 5, 6] }';

        expect(txResponse.toString(), equals(expectedString));
      });
    });
    group('TxResult', () {
      final txResult = TxResult(
        code: 5,
        log: 'test',
        events: [
          Event(type: 'type_test1'),
          Event(type: 'type_test2'),
        ],
      );

      test('toJson and fromJson works properly.', () {
        final json = txResult.toJson();
        final fromJson = TxResult.fromJson(json);

        expect(fromJson, equals(txResult));
      });

      test('toString works properly.', () {
        final expectedString =
            'TxResult { code: 5, log: test, codeSpace: null, events: [Event { type: type_test1 }, Event { type: type_test2 }] }';

        expect(txResult.toString(), equals(expectedString));
      });
    });

    group('Event', () {
      final event = Event(type: 'test');

      test('toJson and fromJson works properly.', () {
        final json = event.toJson();
        final fromJson = Event.fromJson(json);

        expect(fromJson, equals(event));
      });

      test('toString works properly.', () {
        final expectedString = 'Event { type: test }';

        expect(event.toString(), equals(expectedString));
      });
    });
  });
}
