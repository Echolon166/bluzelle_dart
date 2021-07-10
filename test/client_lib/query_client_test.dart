// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/clients/export.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';
import '../test_helpers.dart';

void main() {
  group('query_client_test:', () {
    test('QueryClient calls with custom GeneratedMessages works properly.', () {
      final queryClient = QueryClient.connect(
        host: host,
        port: port,
      );

      expect(
        queryClient
            .invoke(null, 'Query', 'Count', QueryCountRequest(uuid: 'test'),
                QueryCountResponse())
            .then((resp) => expect(resp, TypeMatcher<QueryCountResponse>())),
        completes,
      );
    });

    test('QueryClient calls from Protobuf generated APIs work properly.', () {
      final queryClient = QueryClient.fromNetworkInfo(
        NetworkInfo.fromHost(host: host),
      );

      final queryApi = crud.QueryApi(queryClient);

      expect(
        queryApi
            .keys(null, QueryKeysRequest(uuid: 'test'))
            .then((resp) => expect(resp, TypeMatcher<QueryKeysResponse>())),
        completes,
      );
    });

    test('QueryClient throws an error if transaction contains errors.', () {});
  });
}
