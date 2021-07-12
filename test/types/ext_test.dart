// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle/src/types/export.dart';

void main() {
  group('ext_test:', () {
    group('BigIntExtensions', () {
      test('toUint8List() works properly', () {
        final testValue = BigInt.from(5).toUint8List();

        expect(testValue, Uint8List.fromList([5]));
      });
    });
    group('IntExtensions', () {
      test('toInt64() works properly.', () {
        final testValue = 5.toInt64();

        expect(testValue, fixnum.Int64(5));
      });
    });
  });
}
