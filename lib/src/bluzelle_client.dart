import 'package:bluzelle_dart/src/tendermint_rpc/tendermint34_client.dart';
import 'package:protobuf/protobuf.dart' as pb;

abstract class BluzelleClient extends pb.RpcClient {
  abstract final Tendermint34Client tmClient;
}

class QueryClient implements BluzelleClient {
  @override
  final Tendermint34Client tmClient;

  /// Use [QueryClient.connect] to create an instance along with a Tendermint34Client instance.
  QueryClient(this.tmClient);

  static Future<QueryClient> connect(String url) async {
    final newTmClient = await Tendermint34Client.connect(url);

    return QueryClient(newTmClient);
  }

  void close() {
    tmClient.close();
  }

  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    final qualifiedMessageName = request.info_.qualifiedMessageName;
    final packageName = qualifiedMessageName.substring(
      0,
      qualifiedMessageName.lastIndexOf('.'),
    );
    final path = '/$packageName.$serviceName/$methodName';

    await tmClient
        .abciQuery(
          path: path,
          data: request.writeToBuffer(),
        )
        .then((result) => emptyResponse.mergeFromBuffer(result.value));

    return emptyResponse;
  }
}
