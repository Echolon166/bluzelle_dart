// Dart imports:
import 'dart:math';

class MnemonicHelper {
  late Iterator<String> mnemonicIterator;

  MnemonicHelper(List<String> mnemonicList) {
    mnemonicIterator = mnemonicList.iterator;
  }

  String get nextMnemonic {
    if (!mnemonicIterator.moveNext()) {
      throw Exception('Load more mnemonic for tests.');
    }
    return mnemonicIterator.current;
  }
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String host = 'wss://client.sentry.testnet.private.bluzelle.com';
int port = 26657;

String get dateNow => DateTime.now().millisecondsSinceEpoch.toString();
String getRandomString(int length) => String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(
          _rnd.nextInt(_chars.length),
        ),
      ),
    );
