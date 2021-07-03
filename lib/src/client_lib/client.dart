// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';

abstract class Client extends pb.RpcClient {
  // ignore: unused_field
  abstract final Tendermint34Client _tmClient;

  void close();
}

class QueryClient implements Client {
  @override
  final Tendermint34Client _tmClient;

  /// Use [QueryClient.connect] to create an instance along with a Tendermint34Client instance.
  QueryClient(Tendermint34Client tmClient) : _tmClient = tmClient;

  static Future<QueryClient> connect(String url) async {
    final newTmClient = await Tendermint34Client.connect(url);

    return QueryClient(newTmClient);
  }

  @override
  void close() {
    _tmClient.close();
  }

  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    String path = derivePath(
      serviceName: serviceName,
      methodName: methodName,
      request: request,
    );

    await _tmClient
        .abciQuery(
          path: path,
          data: request.writeToBuffer(),
        )
        .then((result) => emptyResponse.mergeFromBuffer(result.value));

    return emptyResponse;
  }
}

String derivePath({
  required String serviceName,
  required String methodName,
  required pb.GeneratedMessage request,
}) {
  final qualifiedMessageName = request.info_.qualifiedMessageName;
  final packageName = qualifiedMessageName.substring(
    0,
    qualifiedMessageName.lastIndexOf('.'),
  );

  return '/$packageName.$serviceName/$methodName';
}
