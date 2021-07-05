// Dart imports:
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
