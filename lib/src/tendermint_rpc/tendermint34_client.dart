import 'dart:typed_data';

import 'package:bluzelle_dart/src/tendermint_rpc/requests.dart' as requests;
import 'package:bluzelle_dart/src/utils.dart' show unawaited;
import 'package:fixnum/fixnum.dart';
import 'package:json_rpc_2/json_rpc_2.dart' as rpc;
import 'package:protobuf/protobuf.dart' as pb;
import 'package:web_socket_channel/web_socket_channel.dart' as ws;

import 'package:bluzelle_dart/src/codec/tendermint/abci/export.dart' as abci;

class Tendermint34Client extends pb.RpcClient {
  final rpc.Client _client;

  /// Use `Tendermint34Client.connect` or `Tendermint34Client.create` to create an instance.
  Tendermint34Client(this._client);

  /// Creates a new Tendermint client for the given endpoint.
  ///
  /// Uses WebSockets, if given URL schema is http or https, converts it to Tendermint WebSockets schema.
  ///   Ex: wss://localhost:26657/websocket
  static Future<Tendermint34Client> connect(String url) async {
    if (url.startsWith('http://') || url.startsWith('https://')) {
      url = url.replaceFirst(RegExp(r'[^:]*'), 'wss');
      url += '/websocket';
    }

    final socket = ws.WebSocketChannel.connect(Uri.parse(url));
    final client = rpc.Client(socket.cast<String>());

    return await Tendermint34Client.create(client);
  }

  /// Creates a new Tendermint client given an RPC client.
  static Future<Tendermint34Client> create(rpc.Client client) async {
    // Subscribes to the input stream.
    // The returned Future won't complete until the connection is closed.
    unawaited(client.listen());

    // We query the version as a way to say "hi" to the backend,
    //  even in cases where we don't use to result to prevent possible error
    //  when skipping the status call before doing other queries.
    // ignore: unused_local_variable
    final _version = await detectVersion(client);

    return Tendermint34Client(client);
  }

  static Future<String> detectVersion(rpc.Client client) async {
    final request = requests.Method.status.rawValue;
    final result = await client.sendRequest(request);

    if (result == null || result['node_info'] == null) {
      throw 'Unrecognized format for status response.';
    }

    final version = result['node_info']['version'];

    if (version is! String) {
      throw 'Unrecognized version format: Must be string.';
    }

    return version;
  }

  void close() {
    _client.close();
  }

  /// Sends a request to a server and returns the reply.
  ///
  /// Serializes the request as Json.
  /// It merges the reply into [emptyResponse] and returns it.
  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    final payload = request.toProto3Json();

    await _client.sendRequest(methodName, payload).then(
          (result) => emptyResponse.mergeFromProto3Json(result["response"]),
        );

    return emptyResponse;
  }

  Future<abci.ResponseInfo> abciInfo() async => await invoke(
        null,
        'tendermint_abci',
        requests.Method.abciInfo.rawValue,
        abci.RequestInfo.create(),
        abci.ResponseInfo(),
      );

  Future<abci.ResponseQuery> abciQuery({
    required String path,
    required Uint8List data,
    Int64? height,
    bool? prove,
  }) async =>
      await invoke(
        null,
        'tendermint_abci',
        requests.Method.abciQuery.rawValue,
        abci.RequestQuery(
          path: path,
          data: data,
          height: height,
          prove: prove,
        ),
        abci.ResponseQuery(),
      );
}
