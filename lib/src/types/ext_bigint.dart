// Dart imports:
import 'dart:typed_data';

/// Extensions on the[BigInt] class.
extension BigIntExtension on BigInt {
  /// Converts this [BigInt] into a [Uint8List] encoding it with the
  ///   big-endian encoding.
  Uint8List toUint8List() {
    // Does not handle negative numbers.
    final _byteMask = BigInt.from(0xff);
    var number = this;
    final size = (number.bitLength + 7) >> 3;
    final result = Uint8List(size);

    for (var i = 0; i < size; i++) {
      result[size - i - 1] = (number & _byteMask).toInt();
      number = number >> 8;
    }

    return result;
  }
}
