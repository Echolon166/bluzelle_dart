// Dart imports:
import 'dart:convert';
import 'dart:typed_data';

// Package imports:
import 'package:test/expect.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle/src/tendermint_rpc/export.dart';
import 'package:bluzelle/src/transactions/export.dart';
import 'package:bluzelle/src/types/export.dart';
import 'package:bluzelle/src/wallet/export.dart';
import '../test_helpers.dart';

void main() {
  group('tendermint34_client_test:', () {
    group('Tendermint34Client.connect()', () {
      test('HTTPS host works properly.', () {
        final tendermint34Client = Tendermint34Client.connect(
          host: hostHttps,
          port: 26657,
        );

        expect(
          tendermint34Client.abciInfo().then(
            (value) {
              expect(value, TypeMatcher<ResponseInfo>());
              return value;
            },
          ).then((value) => expect(value.data, isNotEmpty)),
          completes,
        );
      });

      test('WSS host works properly.', () {
        final tendermint34Client = Tendermint34Client.connect(
          host: hostWss,
          port: 26657,
        );

        expect(
          tendermint34Client.abciInfo().then(
            (resp) {
              expect(resp, TypeMatcher<ResponseInfo>());
              return resp;
            },
          ).then((resp) => expect(resp.data, isNotNull)),
          completes,
        );
      });
    });

    group('Tendermint34Client method', () {
      late Tendermint34Client tendermint34Client;

      setUpAll(() {
        tendermint34Client = Tendermint34Client.connect(
          host: hostHttps,
          port: 26657,
        );
      });

      group('abciQuery()', () {
        test('works properly.', () {
          expect(
            tendermint34Client
                .abciQuery(
                    path: '/bluzelle.curium.crud.Query/Count',
                    data: QueryCountRequest(uuid: 'erlo').writeToBuffer())
                .then(
              (resp) {
                expect(resp, TypeMatcher<ResponseQuery>());
                return resp;
              },
            ).then(
              (resp) => expect(
                QueryCountResponse.fromBuffer(resp.value).count,
                isNotNull,
              ),
            ),
            completes,
          );
        });

        test('throws an error if incorrect path.', () {
          expect(
            tendermint34Client.abciQuery(
                path: '/hopefully_incorrect_path/a3o51n4u5',
                data: QueryCountRequest(uuid: 'erlo').writeToBuffer()),
            throwsException,
          );
        });

        test('throws an error if incorrect data.', () {
          expect(
            tendermint34Client.abciQuery(
                path: '/bluzelle.curium.crud.Query/Count',
                data: Uint8List.fromList([1, -1, 1, -1, 5555, -5555])),
            throwsException,
          );
        });
      });

      test('status() works properly.', () {
        expect(
          tendermint34Client.status().then(
                (resp) => expect(
                  resp.nodeInfo.network,
                  isNotNull,
                ),
              ),
          completes,
        );
      });

      group('broadcastTxSync()', () {
        test('works properly.', () {
          final wallet = Wallet.derive(
            mnemonic:
                'nominee use purpose pulse congress noble force aware defy coil banner empower rose rebuild fiber kiwi sustain join gadget gravity conduct wolf scorpion sorry'
                    .split(' '),
            networkInfo: NetworkInfo.fromHost(
              host: hostWss,
            ),
          );

          final request = MsgCreate(
            creator: wallet.bech32Address,
            uuid: dateNow,
            key: getRandomString(10),
            value: utf8.encode('testValue'),
            lease: Lease(seconds: 1),
          );

          expect(
            TxSigner()
                .createAndSign(
                  wallet: wallet,
                  msgs: [request],
                  fee: Fee(
                    gasLimit: 100000000.toInt64(),
                    amount: [
                      Coin(
                        denom: 'ubnt',
                        amount: '200000',
                      ),
                    ],
                  ),
                  memo: 'memo',
                )
                .then((signedTx) => tendermint34Client.broadcastTxSync(
                      tx: (signedTx).writeToBuffer(),
                    )),
            completes,
          );
        });

        test('throws exception if incorrect tx.', () {
          expect(
            tendermint34Client.broadcastTxSync(
              tx: Uint8List.fromList([1, 2, 3]),
            ),
            throwsException,
          );
        });
      });

      group('txSearch()', () {
        test('works properly.', () {
          expect(
              tendermint34Client
                  .txSearch(
                    query:
                        "tx.hash='CCD0A2BC95061D1471EA2DFB81631E8BE78AB743DB763F47C74DB316DAD70048'",
                    prove: true,
                  )
                  .then((value) => expect(value.txs, isNotEmpty)),
              completes);
        });

        test('throws an error if incorrect query.', () {
          expect(
            tendermint34Client.txSearch(query: 'incorrectQuery'),
            throwsException,
          );
        });
      });
    });
  });
}
