// Dart imports:
import 'dart:convert';
import 'dart:typed_data';

// Package imports:
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:bluzelle/src/types/export.dart';

/// Non-nullable Converters

class StringToUint8ListConverter implements JsonConverter<Uint8List, String> {
  const StringToUint8ListConverter();

  @override
  Uint8List fromJson(String json) => Uint8List.fromList(json.codeUnits);

  @override
  String toJson(Uint8List object) => String.fromCharCodes(object);
}

class Base64StringToUint8ListConverter
    implements JsonConverter<Uint8List, String> {
  const Base64StringToUint8ListConverter();

  @override
  Uint8List fromJson(String json) => Uint8List.fromList(base64.decode(json));

  @override
  String toJson(Uint8List object) => base64.encode(object);
}

class StringToIntConverter implements JsonConverter<int, String> {
  const StringToIntConverter();

  @override
  int fromJson(String number) => int.parse(number);

  @override
  String toJson(int number) => number.toString();
}

/// Nullable Converters

class NullableInt64ToIntConverter
    implements JsonConverter<fixnum.Int64?, int?> {
  const NullableInt64ToIntConverter();

  @override
  fixnum.Int64? fromJson(int? json) => json?.toInt64();

  @override
  int? toJson(fixnum.Int64? object) => object?.toInt();
}
