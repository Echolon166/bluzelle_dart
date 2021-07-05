// Dart imports:
import 'dart:convert';
import 'dart:typed_data';

// Package imports:
import 'package:convert/convert.dart' show hex;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:json_rpc_2/json_rpc_2.dart' as rpc;
import 'package:protobuf/protobuf.dart' as pb;
import 'package:web_socket_channel/web_socket_channel.dart' as ws;

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/utils/export.dart';

class Tendermint34Client extends pb.RpcClient {
  final rpc.Client _client;

  Tendermint34Client(this._client);

  /// Creates a new [Tendermint34Client] instance for given host and port.
  ///
  /// Uses WebSockets, if given host URL schema is http or https, converts it
  ///   to Tendermint WebSockets schema.
  /// Ex: wss://localhost:26657/websocket
  factory Tendermint34Client.connect({
    required String host,
    required int port,
  }) {
    var url = '$host:${port.toString()}';

    if (url.startsWith('http://') || url.startsWith('https://')) {
      url = url.replaceFirst(RegExp(r'http'), 'ws');
      url += '/websocket';
    }

    final socket = ws.WebSocketChannel.connect(Uri.parse(url));
    final client = rpc.Client(socket.cast<String>());

    // Subscribes to the input stream.
    // The returned Future won't complete until the connection is closed.
    unawaited(client.listen());

    return Tendermint34Client(client);
  }

  /// Closes the rpc connection of the [Tendermint34Client].
  void close() {
    _client.close();
  }

  /// Sends a request to a server and returns the reply.
  /// Serializes the request as Json. Merges the reply into [emptyResponse]
  ///   and returns it.
  @override
  Future<T> invoke<T extends pb.GeneratedMessage>(
    pb.ClientContext? ctx,
    String serviceName,
    String methodName,
    pb.GeneratedMessage request,
    T emptyResponse,
  ) async {
    Map<String, dynamic> payload =
        request.toProto3Json() as Map<String, dynamic>;

    if (methodName == RequestMethod.abciQuery.rawValue) {
      final decodedData = base64Decode(payload["data"]);
      payload["data"] = hex.encode(decodedData);
    }

    await _client.sendRequest(methodName, payload).then(
          (result) => emptyResponse.mergeFromProto3Json(result["response"]),
        );

    return emptyResponse;
  }

  Future<ResponseInfo> abciInfo() async => await invoke(
        null,
        'ABCIApplication',
        RequestMethod.abciInfo.rawValue,
        RequestInfo(),
        ResponseInfo(),
      );

  Future<ResponseQuery> abciQuery({
    required String path,
    required Uint8List data,
    fixnum.Int64? height,
    bool? prove,
  }) async =>
      await invoke(
        null,
        'ABCIApplication',
        RequestMethod.abciQuery.rawValue,
        RequestQuery(
          path: path,
          data: data,
          height: height,
          prove: prove,
        ),
        ResponseQuery(),
      );

  Future<StatusResponse> status() async {
    final request = RequestMethod.status.rawValue;
    final result = await _client.sendRequest(request);

    return StatusResponse.fromJson(result);
  }

  Future<BroadcastTxSyncResponse> broadcastTxSync(Uint8List tx) async {
    final request = RequestMethod.broadcastTxSync.rawValue;
    final payload = {'tx': base64.encode(tx)};

    final result = await _client.sendRequest(request, payload);

    return BroadcastTxSyncResponse.fromJson(result);
  }
}
