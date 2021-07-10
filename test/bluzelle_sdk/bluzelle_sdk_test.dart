// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/bluzelle_dart.dart';
import '../test_helpers.dart';

void main() {
  group('bluzelle_sdk_test:', () {
    group('Field', () {
      late BluzelleSdk sdk;

      setUpAll(() {
        sdk = bluzelle(
          mnemonic:
              'bless fury misery volume bullet worry easy leisure hurdle devote depend donkey name helmet umbrella quiz local transfer food social lonely candy fat ask',
          host: host,
          port: port,
          maxGas: 100000000,
          gasPrice: 0.002,
        );
      });

      test('.url works properly.', () {
        expect(sdk.db.url, equals('$host:$port'));
      });

      test('.address works properly.', () {
        expect(
          sdk.db.address,
          equals('bluzelle1jxppjzqexe5wwc2wtjc6tnjatpcl8add66gywv'),
        );
      });
    });

    group('Method', () {
      late BluzelleSdk sdk;

      late MnemonicHelper mnemonicHelper;

      setUpAll(() {
        mnemonicHelper = MnemonicHelper([
          'dinner soul alarm prize magnet elbow mixed galaxy dilemma utility invest weird toss tobacco follow thing fresh picnic chuckle rug inhale lend subject educate',
          'unit correct vapor april gossip original true elevator jaguar sign crater hospital castle benefit faculty claw sorry prevent wish derive dose rug twice quick',
        ]);
      });

      setUp(() {
        sdk = bluzelle(
          mnemonic: mnemonicHelper.nextMnemonic,
          host: host,
          port: port,
          maxGas: 100000000,
          gasPrice: 0.002,
        );
      });

      test('.q and .tx works properly.', () {
        final uuid = dateNow;
        final key = getRandomString(10);
        final value = 'sdkTestValue';

        expect(
          sdk.db.tx
              .create_(
                null,
                MsgCreate(
                  creator: sdk.db.address,
                  uuid: uuid,
                  key: key,
                  value: utf8.encode(value),
                  lease: Lease(minutes: 1),
                ),
              )
              .then(
                (_) => sdk.db.q
                    .read(
                      null,
                      QueryReadRequest(
                        uuid: uuid,
                        key: key,
                      ),
                    )
                    .then(
                      (resp) => expect(
                        utf8.decode(resp.value),
                        equals(value),
                      ),
                    ),
              ),
          completes,
        );
      });

      test('.withTransactions() works properly.', () {
        final uuid = dateNow;
        final key1 = getRandomString(10);
        final key2 = getRandomString(10);
        final key3 = getRandomString(10);

        expect(
          sdk.db
              .withTransactions(
                [
                  MsgCreate(
                    creator: sdk.db.address,
                    uuid: uuid,
                    key: key1,
                    value: utf8.encode('value1'),
                    lease: Lease(minutes: 1),
                  ),
                  MsgCreate(
                    creator: sdk.db.address,
                    uuid: uuid,
                    key: key2,
                    value: utf8.encode('value2'),
                    lease: Lease(minutes: 1),
                  ),
                  MsgDelete(
                    creator: sdk.db.address,
                    uuid: uuid,
                    key: key1,
                  ),
                  MsgRename(
                    creator: sdk.db.address,
                    uuid: uuid,
                    key: key2,
                    newKey: key3,
                  ),
                ],
                memo: 'testMemo',
              )
              .then(
                (_) => expect(
                  sdk.db.q.read(
                    null,
                    QueryReadRequest(uuid: uuid, key: key1),
                  ),
                  throwsException,
                ),
              )
              .then(
                (_) => expect(
                  sdk.db.q.read(
                    null,
                    QueryReadRequest(uuid: uuid, key: key2),
                  ),
                  throwsException,
                ),
              )
              .then(
                (_) => expect(
                  sdk.db.q
                      .read(
                        null,
                        QueryReadRequest(
                          uuid: uuid,
                          key: key3,
                        ),
                      )
                      .then(
                        (resp) => expect(
                          utf8.decode(resp.value),
                          equals('value2'),
                        ),
                      ),
                  completes,
                ),
              ),
          completes,
        );
      });
    });
  });
}
