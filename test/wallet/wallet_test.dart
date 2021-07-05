// Dart imports:
import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

// Package imports:
import 'package:convert/convert.dart' show hex;
import 'package:test/test.dart';

// Project imports:
import 'package:bluzelle_dart/src/wallet/export.dart';

void main() {
  final networkInfo = NetworkInfo.fromHost(host: '');

  final testVectors = {
    'bluzelle1k9s9nvsp7zcst7xq2mkrk8jse5u82669xpuz3f':
        'talent inflict elbow much husband label hobby walnut correct flee need crucial quality pulp trumpet feature warm model whip foam popular main hub museum',
    'bluzelle10zk5d3kkmtrfuansqz9uh63yxhe5kaklycnefq':
        'zoo brown genre claim organ figure move rain predict police virus pact slice decade useful home armed service child avoid age blame bean initial',
    'bluzelle1tuzqar3q5d35fphuxg2ckw4xet66t4zlk9w2pg':
        'nuclear jar number glimpse awesome law close three funny term reopen frown miracle purpose engine muscle fit gesture song skill huge gown whisper spice',
    'bluzelle1uyng79p9dl5xsmk3cy6f90l6kycyvpwc4udzwm':
        'burden cloth unaware exchange charge absurd guide display extend gym always river develop wolf moral cake giraffe fever shrimp bird light goddess dad erosion',
    'bluzelle1j3cw7ltuh0dc78kc8mxhl20ly4rfqe4vekwssl':
        'enforce cheese arctic knock defense hamster flame donor comfort tent usual ship problem churn pottery paper often end change ladder width rule this blood',
  };

  group('Derive', () {
    test('throws exception with invalid mnemonic.', () {
      expect(
        () => Wallet.derive(
          mnemonic: [],
          networkInfo: networkInfo,
        ),
        throwsException,
      );
    });

    test('works properly with valid mnemonic.', () {
      testVectors.forEach(
        (address, mnemonic) {
          final wallet = Wallet.derive(
            mnemonic: mnemonic.split(' '),
            networkInfo: networkInfo,
          );
          expect(wallet.bech32Address, address);
        },
      );
    });

    test('with different derivation path works properly.', () {
      final info = NetworkInfo.fromHost(hrp: 'desmos', host: '');
      final mnemonic = [
        'roast',
        'stomach',
        'welcome',
        'please',
        'gauge',
        'funny',
        'coconut',
        'baby',
        'bird',
        'announce',
        'bind',
        'jacket',
        'title',
        'vibrant',
        'tomorrow',
        'indoor',
        'bitter',
        'initial',
        'ill',
        'analyst',
        'thought',
        'strike',
        'answer',
        'cotton',
      ];
      final wallet = Wallet.derive(
        mnemonic: mnemonic,
        networkInfo: info,
        derivationPath: "m/44'/852'/0'/0/0",
      );

      expect(
        wallet.bech32Address,
        'desmos1pcvzsr8kfe4lcpm5n60rjrgq0s5qtjh3stjj6p',
      );
    });
  });

  test('Random generates different wallets.', () {
    final info = NetworkInfo.fromHost(host: 'example.com');
    final wallets =
        List.generate(20, (index) => Wallet.random(networkInfo: info));

    final map = HashMap.fromIterable(
      wallets,
      key: (entry) => (entry as Wallet).bech32Address,
      value: (entry) => entry,
    );

    expect(map.entries, hasLength(wallets.length));
  });

  test('Convert works properly.', () {
    final mnemonic =
        'trip focus improve census orchard april lounge dream chapter pen lyrics release demise salmon cherry wisdom author bulb vanish finish cannon spider wool enter';
    final bluzelleAddr = 'bluzelle1gxxtd9x9yhhtwfz33t8dyllef4lll5dvc7rdxn';
    final bluzelleInfo = NetworkInfo.fromHost(host: 'example.com');

    final wallet =
        Wallet.derive(mnemonic: mnemonic.split(' '), networkInfo: bluzelleInfo);
    expect(wallet.bech32Address, bluzelleAddr);

    final godzelleAddr = 'godzelle1gxxtd9x9yhhtwfz33t8dyllef4lll5dvcf6ngx';
    final godzelleInfo = NetworkInfo.fromHost(
      hrp: 'godzelle',
      host: 'example.com',
    );

    final converted = Wallet.convert(wallet: wallet, networkInfo: godzelleInfo);
    expect(converted.bech32Address, godzelleAddr);
  });

  test('toJson and fromJson works properly.', () {
    final mnemonic =
        'trip focus improve census orchard april lounge dream chapter pen lyrics release demise salmon cherry wisdom author bulb vanish finish cannon spider wool enter';
    final wallet = Wallet.derive(
      mnemonic: mnemonic.split(' '),
      networkInfo: networkInfo,
    );
    final privateKey = wallet.privateKey;

    final jsonWallet = wallet.toJson();
    final retrivedWallet = Wallet.fromJson(
      json: jsonWallet,
      privateKey: privateKey,
    );

    expect(wallet, retrivedWallet);
  });

  test('Sign generates deterministic signatures.', () {
    final info = NetworkInfo.fromHost(host: '');
    final mnemonic =
        'zoo brown genre claim organ figure move rain predict police virus pact slice decade useful home armed service child avoid age blame bean initial';
    final wallet = Wallet.derive(
      mnemonic: mnemonic.split(' '),
      networkInfo: info,
    );

    final data = 'Test';
    final sig1 = hex.encode(wallet.sign(Uint8List.fromList(utf8.encode(data))));
    final sig2 = hex.encode(wallet.sign(Uint8List.fromList(utf8.encode(data))));

    expect(true, sig1 == sig2);
  });
}
