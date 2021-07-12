// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle/src/codec/crud/export.dart' as crud;
import 'package:bluzelle/src/transactions/export.dart';
import 'package:bluzelle/src/types/export.dart';
import 'package:bluzelle/src/utils/export.dart';

void main() {
  group('builder_test:', () {
    test('Transaction is built correctly.', () {
      final message = crud.MsgCreate(
        creator: 'test_address',
        uuid: 'test',
        key: 'test',
        value: utf8.encode('test'),
        lease: crud.Lease(hours: 1),
      );

      // Create the transaction with TxBuilder.
      final builder = TxBuilder.create();
      builder.setMsgs([message]);
      builder.setGasLimit(200000.toInt64());

      // Create the transaction by hand.
      final body = TxBody();
      body.messages.add(serialize(message));

      final authInfo = AuthInfo();
      authInfo.fee = Fee(gasLimit: 200000.toInt64());

      final expected = Tx(
        body: body,
        authInfo: authInfo,
      );

      // Verify if the transactions match.
      expect(builder.tx, expected);
    });
  });
}
