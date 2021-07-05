// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// Project imports:
import 'package:bluzelle_dart/bluzelle_dart.dart';
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'tendermint34_client_test.mocks.dart';

@GenerateMocks([Tendermint34Client])
void main() {
  late Tendermint34Client tendermint34Client;

  setUp(() {
    tendermint34Client = MockTendermint34Client();
  });

  test('abciInfo() works properly.', () async {
    when(tendermint34Client.abciInfo()).thenAnswer(
      (_) => Future.value(ResponseInfo(data: 'test')),
    );

    final info = await tendermint34Client.abciInfo();

    expect(info.data, 'test');
  });

  test('abciQuery() works properly.', () async {
    final testData = Uint8List.fromList([1, 2, 3]);
    final responseData = Uint8List.fromList([4, 5, 6]);

    when(tendermint34Client.abciQuery(
      path: 'test_path',
      data: testData,
    )).thenAnswer(
      (_) => Future.value(ResponseQuery(value: responseData)),
    );

    final query = await tendermint34Client.abciQuery(
      path: 'test_path',
      data: testData,
    );

    expect(query.value, responseData);
  });

  test('status() works properly.', () async {
    when(tendermint34Client.status()).thenAnswer(
      (_) => Future.value(StatusResponse(nodeInfo: NodeInfo(network: 'test'))),
    );

    final status = await tendermint34Client.status();

    expect(status.nodeInfo.network, 'test');
  });
}
