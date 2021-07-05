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

  test('NodeInfo toJson and fromJson works properly', () {
    final nodeInfo = NodeInfo(network: 'test');

    final json = nodeInfo.toJson();
    final fromJson = NodeInfo.fromJson(json);

    expect(fromJson, equals(nodeInfo));
  });
}
