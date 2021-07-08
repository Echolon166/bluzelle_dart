// Project imports:
import 'package:bluzelle_dart/src/types/export.dart';

/// [SignModeHandler] defines a interface to be implemented by types which
///   will handle [SignMode]'s by generating sign bytes from a [Tx] and
///   [SignerData].
abstract class SignModeHandler {
  /// [modes] is the list of modes supported by this handler.
  List<SignMode> get modes;

  /// [getSignBytes] returns the sign bytes for the provided [SignMode],
  ///   [SignerData] and [Tx], or an error.
  List<int> getSignBytes({
    required SignMode mode,
    required SignerData data,
    required Tx tx,
  });
}

/// [DirectSignModeHandler] defines the [SignMode.SIGN_MODE_DIRECT] [SignModeHandler].
class DirectSignModeHandler extends SignModeHandler {
  DirectSignModeHandler._();

  factory DirectSignModeHandler.create() {
    return DirectSignModeHandler._();
  }

  @override
  List<SignMode> get modes {
    return [SignMode.SIGN_MODE_DIRECT];
  }

  @override
  List<int> getSignBytes({
    required SignMode mode,
    required SignerData data,
    required Tx tx,
  }) {
    if (mode != SignMode.SIGN_MODE_DIRECT) {
      return throw Exception('Unsupported sign mode: $mode.');
    }

    final bodyBytes = tx.body.writeToBuffer();
    final authInfoBytes = tx.authInfo.writeToBuffer();

    final signDoc = SignDoc();
    if (bodyBytes.isNotEmpty) {
      signDoc.bodyBytes = bodyBytes;
    }

    if (authInfoBytes.isNotEmpty) {
      signDoc.authInfoBytes = authInfoBytes;
    }

    if (data.chainId.isNotEmpty) {
      signDoc.chainId = data.chainId;
    }

    if (data.accountNumber > 0) {
      signDoc.accountNumber = data.accountNumber;
    }

    return signDoc.writeToBuffer();
  }
}
