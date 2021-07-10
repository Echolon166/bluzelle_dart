// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:protobuf/protobuf.dart' as pb;
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/clients/export.dart';
import 'package:bluzelle_dart/src/codec/crud/export.dart' as crud;
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';
import '../test_helpers.dart';

void main() {
  group('transaction_client_test:', () {
    late TransactionClient transactionClient;
    late Wallet wallet;

    late String uuid;
    late String key;
    late pb.GeneratedMessage request;

    group('transaction_client_test', () {
      setUpAll(() {
        List<String> mnemonic =
            'need seat viable busy fancy guitar able beach awkward click silk sugar walk large into fetch lake rice begin wrong swap area vanish token'
                .split(' ');

        wallet = Wallet.derive(
          mnemonic: mnemonic,
          networkInfo: NetworkInfo.fromHost(
            host: host,
          ),
        );

        transactionClient = TransactionClient.connect(
          mnemonic: mnemonic,
          networkInfo: NetworkInfo.fromHost(
            host: host,
          ),
          fee: Fee(gasLimit: 100000000.toInt64(), amount: [
            Coin(
              denom: 'ubnt',
              amount: '200000',
            ),
          ]),
        );
      });

      setUp(() {
        uuid = dateNow;
        key = getRandomString(10);

        request = MsgCreate(
          creator: wallet.bech32Address,
          uuid: uuid,
          key: key,
          value: utf8.encode('transactionTestValue'),
          lease: Lease(minutes: 1),
        );
      });

      test(
          'TransactionClient calls with custom GeneratedMessages work properly.',
          () {
        expect(
          transactionClient
              .invoke(
                null,
                'Msg',
                'Create',
                request,
                MsgCreateResponse(),
              )
              .then(
                (_) => wallet.networkInfo.tendermint34Client
                    .abciQuery(
                      path: '/bluzelle.curium.crud.Query/Read',
                      data: QueryReadRequest(uuid: uuid, key: key)
                          .writeToBuffer(),
                    )
                    .then(
                      (resp) => expect(
                        utf8.decode(
                            QueryReadResponse.fromBuffer(resp.value).value),
                        equals('transactionTestValue'),
                      ),
                    ),
              ),
          completes,
        );
      });

      test(
          'TransactionClient calls from Protobuf generated APIs work properly.',
          () {
        final transactionApi = crud.MsgApi(transactionClient);

        expect(
          transactionApi.create_(null, request as MsgCreate).then(
                (_) => wallet.networkInfo.tendermint34Client
                    .abciQuery(
                      path: '/bluzelle.curium.crud.Query/Read',
                      data: QueryReadRequest(uuid: uuid, key: key)
                          .writeToBuffer(),
                    )
                    .then(
                      (resp) => expect(
                        utf8.decode(
                            QueryReadResponse.fromBuffer(resp.value).value),
                        equals('transactionTestValue'),
                      ),
                    ),
              ),
          completes,
        );
      });

      test(
          'TransactionClient invokeBatch() works properly with multiple transactions.',
          () {
        final key2 = getRandomString(10);

        final request2 = MsgCreate(
          creator: wallet.bech32Address,
          uuid: uuid,
          key: key2,
          value: utf8.encode('transactionTestValue2'),
          lease: Lease(minutes: 1),
        );

        expect(
          transactionClient.invokeBatch([request, request2]).then(
            (_) => wallet.networkInfo.tendermint34Client
                .abciQuery(
                  path: '/bluzelle.curium.crud.Query/Read',
                  data: QueryReadRequest(uuid: uuid, key: key).writeToBuffer(),
                )
                .then(
                  (resp) => expect(
                    utf8.decode(QueryReadResponse.fromBuffer(resp.value).value),
                    equals('transactionTestValue'),
                  ),
                )
                .then(
                  (_) => wallet.networkInfo.tendermint34Client
                      .abciQuery(
                        path: '/bluzelle.curium.crud.Query/Read',
                        data: QueryReadRequest(uuid: uuid, key: key2)
                            .writeToBuffer(),
                      )
                      .then(
                        (resp) => expect(
                          utf8.decode(
                              QueryReadResponse.fromBuffer(resp.value).value),
                          equals('transactionTestValue2'),
                        ),
                      ),
                ),
          ),
          completes,
        );
      });

      test('TransactionClient throws an error if transaction contains errors.',
          () {
        final transactionApi = crud.MsgApi(transactionClient);

        expect(
          transactionApi.create_(null, request as MsgCreate).then(
                (_) => transactionApi.create_(null, request as MsgCreate),
              ),
          throwsException,
        );
      });
    });
  });
}
