// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';

void main() {
  test('StatusResponse toJson and fromJson works properly.', () {
    final nodeInfo = NodeInfo(network: 'test');
    final statusResponse = StatusResponse(nodeInfo: nodeInfo);

    final json = statusResponse.toJson();
    final fromJson = StatusResponse.fromJson(json);

    expect(fromJson, equals(statusResponse));
  });

  test('NodeInfo toJson and fromJson works properly.', () {
    final nodeInfo = NodeInfo(network: 'test');

    final json = nodeInfo.toJson();
    final fromJson = NodeInfo.fromJson(json);

    expect(fromJson, equals(nodeInfo));
  });

  test('BroadcastTxSyncResponse toJson and fromJson works properly.', () {
    final broadcastTxSyncResponse =
        BroadcastTxSyncResponse(hash: Uint8List.fromList([1, 2, 3]));

    final json = broadcastTxSyncResponse.toJson();
    final fromJson = BroadcastTxSyncResponse.fromJson(json);

    expect(fromJson, equals(broadcastTxSyncResponse));
  });

  test('TxSearchResponse toJson and fromJson works properly.', () {
    final txResult = TxResult(code: 5, log: 'test', events: []);
    final txResponse = TxResponse(
      hash: Uint8List.fromList([1, 2, 3]),
      txResult: txResult,
      tx: Uint8List.fromList([4, 5, 6]),
    );
    final txSearchResponse = TxSearchResponse(
      txs: [txResponse],
      totalCount: 1,
    );

    final json = txSearchResponse.toJson();
    final fromJson = TxSearchResponse.fromJson(json);

    expect(fromJson, equals(txSearchResponse));
  });

  test('TxResponse toJson and fromJson works properly.', () {
    final txResult = TxResult(code: 5, log: 'test', events: []);
    final txResponse = TxResponse(
      hash: Uint8List.fromList([1, 2, 3]),
      txResult: txResult,
      tx: Uint8List.fromList([4, 5, 6]),
    );

    final json = txResponse.toJson();
    final fromJson = TxResponse.fromJson(json);

    expect(fromJson, equals(txResponse));
  });

  test('TxResult toJson and fromJson works properly.', () {
    final txResult = TxResult(code: 5, log: 'test', events: []);

    final json = txResult.toJson();
    final fromJson = TxResult.fromJson(json);

    expect(fromJson, equals(txResult));
  });

  test('Event toJson and fromJson works properly.', () {
    final event = Event(type: 'test');

    final json = event.toJson();
    final fromJson = Event.fromJson(json);

    expect(fromJson, equals(event));
  });
}
