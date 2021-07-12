// Project imports:
import 'package:bluzelle/src/transactions/export.dart';
import 'package:bluzelle/src/types/export.dart';

/// [TxConfig] defines an interface a client can utilize to generate an
///   application-defined concrete transaction type. The type returned must
///   implement [TxBuilder].
abstract class TxConfig {
  SignMode defaultSignMode();
  TxBuilder newTxBuilder();
  SignModeHandler signModeHandler();
}

/// [DefaultTxConfig] represents the default [TxConfig] implementation.
class DefaultTxConfig extends TxConfig {
  DefaultTxConfig._();

  factory DefaultTxConfig.create() {
    return DefaultTxConfig._();
  }

  @override
  SignMode defaultSignMode() {
    return SignMode.SIGN_MODE_DIRECT;
  }

  @override
  TxBuilder newTxBuilder() {
    return TxBuilder.create();
  }

  @override
  SignModeHandler signModeHandler() {
    return DirectSignModeHandler.create();
  }
}
