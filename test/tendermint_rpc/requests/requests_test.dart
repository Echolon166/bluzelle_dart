// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';

void main() {
  test('BroadcastTxSyncRequest toJson and fromJson works properly.', () {
    final broadcastTxSyncRequest =
        BroadcastTxSyncRequest(tx: Uint8List.fromList([1, 2, 3]));

    final json = broadcastTxSyncRequest.toJson();
    final fromJson = BroadcastTxSyncRequest.fromJson(json);

    expect(fromJson, equals(broadcastTxSyncRequest));
  });
}
