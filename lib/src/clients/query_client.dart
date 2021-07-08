// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

/// [QueryClient] acts as a bridge between custom [pb.GeneratedMessage] type
///   query requests and [Tendermint34Client.abciQuery].
class QueryClient extends pb.RpcClient {
  final Tendermint34Client _tendermint34Client;

  QueryClient({required Tendermint34Client tendermint34Client})
      : _tendermint34Client = tendermint34Client;

  /// Creates a [QueryClient] instance along with a [Tendermint34Client]
  ///   instance.
  factory QueryClient.connect({
    required String host,
    required int port,
  }) {
    final newTendermint34Client = Tendermint34Client.connect(
      host: host,
      port: port,
    );

    return QueryClient(tendermint34Client: newTendermint34Client);
  }

  /// Creates a [QueryClient] instance from given [networkInfo].
  factory QueryClient.fromNetworkInfo(NetworkInfo networkInfo) {
    return QueryClient(tendermint34Client: networkInfo.tendermint34Client);
  }

  void close() {
    _tendermint34Client.close();
  }

  /// [request]'s path will be derived from its info, and an abciQuery will be
  ///   sent using derived path and [request]'s value.
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

/// Derive required path using [serviceName], [methodName] and [request]'s info.
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
