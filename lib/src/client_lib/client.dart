// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';

abstract class Client extends pb.RpcClient {
  // ignore: unused_field
  abstract final Tendermint34Client _tendermint34Client;

  void close();
}

class QueryClient implements Client {
  @override
  final Tendermint34Client _tendermint34Client;

  QueryClient(Tendermint34Client tendermint34Client)
      : _tendermint34Client = tendermint34Client;

  /// Creates a [QueryClient] instance along with a [Tendermint34Client] instance.
  factory QueryClient.connect({
    required String host,
    required int port,
  }) {
    final newTendermint34Client = Tendermint34Client.connect(
      host: host,
      port: port,
    );

    return QueryClient(newTendermint34Client);
  }

  @override
  void close() {
    _tendermint34Client.close();
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

    await _tendermint34Client
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
