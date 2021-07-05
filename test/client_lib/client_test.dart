// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/client_lib/client.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'client_test.mocks.dart';

@GenerateMocks([Tendermint34Client])
void main() {
  late Tendermint34Client tendermint34Client;
  late QueryClient queryClient;

  setUp(() {
    tendermint34Client = MockTendermint34Client();
    queryClient = QueryClient(tendermint34Client);
  });

  test('Calls with custom GeneratedMessages works properly.', () async {
    when(tendermint34Client.abciQuery(
      path: '/bluzelle.curium.crud.Query/Count',
      data: Uint8List.fromList([10, 4, 116, 101, 115, 116]),
    )).thenAnswer(
      (_) => Future.value(
        ResponseQuery(
          code: 0,
          index: 0.toInt64(),
          value: [10, 4, 116, 101, 115, 116, 16, 1],
          height: 34079.toInt64(),
        ),
      ),
    );

    final request = QueryCountRequest(uuid: 'test');
    final queryResponse = QueryCountResponse();
    final expectedResponse = QueryCountResponse(uuid: 'test', count: 1);

    await queryClient.invoke(null, 'Query', 'Count', request, queryResponse);

    expect(queryResponse, expectedResponse);
  });

  test('Calls from Protobuf generated APIs work properly.', () async {
    when(tendermint34Client.abciQuery(
      path: '/bluzelle.curium.crud.Query/Count',
      data: Uint8List.fromList([10, 4, 116, 101, 115, 116]),
    )).thenAnswer(
      (_) => Future.value(
        ResponseQuery(
          code: 0,
          index: 0.toInt64(),
          value: [10, 4, 116, 101, 115, 116, 16, 1],
          height: 34079.toInt64(),
        ),
      ),
    );

    final queryApi = crud.QueryApi(queryClient);

    final request = QueryCountRequest(uuid: 'test');
    final queryResponse = await queryApi.count(null, request);
    final expectedResponse = QueryCountResponse(uuid: 'test', count: 1);

    expect(queryResponse, expectedResponse);
  });
}
