// Dart imports:
import 'dart:async';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:stream_channel/stream_channel.dart';

/// Wrapper around http client which makes it look like a [StreamChannel] which
///   works with the JSON RPC's Client class.
class HttpChannel extends StreamChannelMixin {
  final Uri _uri;

  final _controller = StreamChannelController<String>();
  final _headers = {'Content-Type': 'application/json; charset=UTF-8'};

  HttpChannel({required Uri uri}) : _uri = uri {
    listen();
  }

  factory HttpChannel.connect(Uri uri) {
    return HttpChannel(uri: uri);
  }

  void listen() => _controller.local.stream.listen(
        (message) async {
          final response = await http.post(
            _uri,
            body: message,
            headers: _headers,
          );

          _controller.local.sink.add(response.body);
        },
      );

  @override
  StreamSink<dynamic> get sink => _controller.foreign.sink;

  @override
  Stream<dynamic> get stream => _controller.foreign.stream;

  @override
  StreamChannel<S> cast<S>() {
    return StreamChannel.withGuarantees(
      _controller.foreign.stream as Stream<S>,
      _controller.foreign.sink as StreamSink<S>,
    );
  }
}
