// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/tendermint_rpc/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

void main() {
  group('network_info_test:', () {
    group('NetworkInfo', () {
      final networkInfo = NetworkInfo.fromHost(
        host: 'https://client.sentry.testnet.private.bluzelle.com',
      );

      test('fromHost and fromHostAndPort works properly.', () {
        final networkInfoDifferentPort = NetworkInfo.fromHostAndPort(
          host: 'https://client.sentry.testnet.private.bluzelle.com',
          port: 1555,
        );

        expect(networkInfoDifferentPort.url, isNot(equals(networkInfo.url)));
      });

      test('toJson and fromJson works properly.', () {
        final json = networkInfo.toJson();
        final fromJson = NetworkInfo.fromJson(json);

        expect(fromJson, equals(networkInfo));
      });

      test('toString works properly.', () {
        final expectedString =
            'NetworkInfo { bech32Hrp: bluzelle, tendermintRpcInfo: TendermintRpcInfo { host: https://client.sentry.testnet.private.bluzelle.com, port: 26657 } }';

        expect(networkInfo.toString(), equals(expectedString));
      });

      test('tendermint34Client call works properly.', () {
        expect(
            networkInfo.tendermint34Client, TypeMatcher<Tendermint34Client>());
      });
    });

    group('TendermintRpcInfo', () {
      final tendermintRpcInfo = TendermintRpcInfo(
        host: 'test.example.com',
        port: 1500,
      );

      test('toJson and fromJson works properly', () {
        final json = tendermintRpcInfo.toJson();
        final fromJson = TendermintRpcInfo.fromJson(json);

        expect(fromJson, equals(tendermintRpcInfo));
      });

      test('toString works properly.', () {
        final expectedString =
            'TendermintRpcInfo { host: test.example.com, port: 1500 }';

        expect(tendermintRpcInfo.toString(), equals(expectedString));
      });
    });
  });
}
