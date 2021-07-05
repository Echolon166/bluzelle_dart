// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:protobuf/protobuf.dart' as pb;

// Project imports:
import 'package:bluzelle_dart/src/transactions/export.dart';
import 'package:bluzelle_dart/src/types/export.dart';
import 'package:bluzelle_dart/src/utils/export.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

/// Allows to create and sign a [Tx] object so that it can later
///   be sent to the chain.
class TxSigner {
  const TxSigner();

  /// Creates a new [Tx] object containing the given [msgs] and signs it using
  ///   the provided [wallet].
  /// Optional [TxConfig], memo, gas and fees can be supplied as well.
  Future<Tx> createAndSign({
    required Wallet wallet,
    required List<pb.GeneratedMessage> msgs,
    TxConfig? config,
    String? memo,
    Fee? fee,
  }) async {
    // Set the config to the default value if not given.
    config ??= DefaultTxConfig.create();
    final signMode = config.defaultSignMode();

    // Set the default fees.
    fee ??= Fee(gasLimit: 200000.toInt64());
    if (!fee.hasGasLimit()) {
      throw ('Invalid fees: Invalid gas amount specified.');
    }

    // Get the account data.
    final account = await getAccountData(
      tendermint34Client: wallet.networkInfo.tendermint34Client,
      address: wallet.bech32Address,
    );
    if (account == null) {
      throw Exception(
          'Account ${wallet.bech32Address} does not exist on chain.');
    }

    // Get the node data.
    final nodeInfo =
        (await wallet.networkInfo.tendermint34Client.status()).nodeInfo;

    // Get the public key from the account, or generate it if
    //  the chain does not have it yet.
    var pubKey = account.pubKey;
    if (pubKey.value.isEmpty) {
      final secp256Key = PubKey(key: wallet.publicKey);
      pubKey = serialize(secp256Key);
    }

    // For SIGN_MODE_DIRECT, calling SetSignatures calls setSignerInfos on
    //  TxBuilder under the hood, and SignerInfos is needed to generate the
    //  sign bytes. This is the reason for setting SetSignatures here, with a
    //  nil signature.
    var sigData = SingleSignatureData(signMode: signMode, signature: null);

    // Set SignatureV2 with empty signatures, to set correct signer infos.
    var sig = SignatureV2(
      pubKey: pubKey,
      data: sigData,
      sequence: account.sequence,
    );

    // Create the transaction builder.
    final tx = config.newTxBuilder()
      ..setMsgs(msgs)
      ..setSignatures([sig])
      ..setMemo(memo)
      ..setFeeAmount(fee.amount)
      ..setGasLimit(fee.gasLimit);

    // Generate the bytes to be signed.
    final handler = config.signModeHandler();
    final signerData = SignerData(
      chainId: nodeInfo.network,
      accountNumber: account.accountNumber,
      sequence: account.sequence,
    );
    final bytesToSign = handler.getSignBytes(
      mode: signMode,
      data: signerData,
      tx: tx.tx,
    );

    // Sign those bytes.
    final sigBytes = wallet.sign(Uint8List.fromList(bytesToSign));

    // Construct the SignatureV2 struct.
    sigData = SingleSignatureData(
      signMode: signMode,
      signature: sigBytes,
    );
    sig = SignatureV2(
      pubKey: pubKey,
      data: sigData,
      sequence: account.sequence,
    );
    tx.setSignatures([sig]);

    // Return the signed transaction.
    return tx.tx;
  }
}
