// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:bech32/bech32.dart';

/// Allows to easily encode into Bech32 some data using a
///   given human readable part.
class Bech32Encoder {
  /// Encodes the given data using the Bech32 encoding with the given
  ///   human readable part.
  static String encode({
    required String hrp,
    required Uint8List data,
  }) {
    final List<int> converted = _convertBits(data, 8, 5);
    final bech32Codec = Bech32Codec();
    final bech32Data = Bech32(hrp, Uint8List.fromList(converted));

    return bech32Codec.encode(bech32Data);
  }

  /// Decodes the given data using the Bech32 decoding.
  static Uint8List decode({required String data}) {
    final bech32Codec = Bech32Codec();
    final bech32Data = bech32Codec.decode(data);
    return Uint8List.fromList(bech32Data.data);
  }

  /// Converts data to bits for bech32 encoding.
  static Uint8List _convertBits(
    List<int> data,
    int from,
    int to, {
    bool pad = true,
  }) {
    var acc = 0;
    var bits = 0;
    final result = <int>[];
    final maxv = (1 << to) - 1;

    for (var v in data) {
      if (v < 0 || (v >> from) != 0) {
        throw Exception();
      }
      acc = (acc << from) | v;
      bits += from;
      while (bits >= to) {
        bits -= to;
        result.add((acc >> bits) & maxv);
      }
    }

    if (pad) {
      if (bits > 0) {
        result.add((acc << (to - bits)) & maxv);
      }
    } else if (bits >= from) {
      throw Exception('Illegal zero padding.');
    } else if (((acc << (to - bits)) & maxv) != 0) {
      throw Exception('Non zero.');
    }

    return Uint8List.fromList(result);
  }
}
