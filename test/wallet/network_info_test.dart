// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/wallet/export.dart';

void main() {
  test('toJson and fromJson works properly.', () {
    final info = NetworkInfo.fromHost(host: 'test.example.com');

    final json = info.toJson();
    final fromJson = NetworkInfo.fromJson(json);

    expect(fromJson, equals(info));
  });
}
