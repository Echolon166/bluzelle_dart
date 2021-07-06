// Dart imports:
import 'dart:convert';
import 'dart:typed_data';

// Package imports:
import 'package:json_annotation/json_annotation.dart';

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
