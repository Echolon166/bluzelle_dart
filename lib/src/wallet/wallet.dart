// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:bip32/bip32.dart' as bip32;
import 'package:convert/convert.dart' show hex;
import 'package:equatable/equatable.dart';
import 'package:pointycastle/export.dart' as pc;

// Project imports:
import 'package:bluzelle_dart/src/utils/export.dart';
import 'package:bluzelle_dart/src/wallet/bech32_encoder.dart';
import 'package:bluzelle_dart/src/wallet/export.dart';

/// Represents a wallet which contains the hex address, the hex private key
///   and the hex public key.
/// In order to create one properly, the [Wallet.derive] method should always
///   be used.
/// The associated [networkInfo] will be used when computin the [bech32Address]
///   associated with the wallet.
class Wallet extends Equatable {
  static const derivationPath = "m/44'/118'/0'/0/0";

  final Uint8List address;
  final Uint8List privateKey;
  final Uint8List publicKey;

  final NetworkInfo networkInfo;

  Wallet({
    required this.networkInfo,
    required this.address,
    required this.privateKey,
    required this.publicKey,
  });

  /// Derives the private key from the given [mnemonic] using the specified
  ///   [networkInfo].
  factory Wallet.derive({
    required List<String> mnemonic,
    required NetworkInfo networkInfo,
    String derivationPath = derivationPath,
  }) {
    // Validate the mnemonic.
    if (!Bip39.validateMnemonic(mnemonic)) {
      throw Exception('Invalid mnemonic.');
    }

    // Convert the mnemonic to a BIP32 instance.
    final seed = Bip39.mnemonicToSeed(mnemonic);
    final root = bip32.BIP32.fromSeed(seed);

    // Get the node from the derivation path.
    final derivedNode = root.derivePath(derivationPath);

    // Get the curve data.
    final secp256k1 = pc.ECCurve_secp256k1();
    final point = secp256k1.G;

    // Compute the curve point associated to the private key.
    final bigInt = BigInt.parse(hex.encode(derivedNode.privateKey!), radix: 16);
    final curvePoint = point * bigInt;

    // Get the public key.
    final publicKeyBytes = curvePoint!.getEncoded();

    // Get the address.
    final sha256Digest = pc.SHA256Digest().process(publicKeyBytes);
    final address = pc.RIPEMD160Digest().process(sha256Digest);

    // Return the key bytes.
    return Wallet(
      networkInfo: networkInfo,
      address: address,
      privateKey: derivedNode.privateKey!,
      publicKey: publicKeyBytes,
    );
  }

  /// Generate a new random [Wallet] using the specified [networkInfo] and
  ///   the optional [derivationPath].
  factory Wallet.random({
    required NetworkInfo networkInfo,
    String derivationPath = derivationPath,
  }) {
    return Wallet.derive(
      mnemonic: Bip39.generateMnemonic(strength: 256),
      networkInfo: networkInfo,
    );
  }

  /// Creates a new [Wallet] instance based on the existent [wallet] for
  ///   the given [networkInfo].
  factory Wallet.convert({
    required Wallet wallet,
    required NetworkInfo networkInfo,
  }) {
    return Wallet(
      networkInfo: networkInfo,
      address: wallet.address,
      privateKey: wallet.privateKey,
      publicKey: wallet.publicKey,
    );
  }

  /// Creates a new [Wallet] instance from the given [json] and [privateKey].
  factory Wallet.fromJson({
    required Map<String, dynamic> json,
    required Uint8List privateKey,
  }) {
    return Wallet(
      networkInfo: NetworkInfo.fromJson(
        json['network_info'] as Map<String, dynamic>,
      ),
      address: Uint8List.fromList(hex.decode(json['hex_address'] as String)),
      privateKey: privateKey,
      publicKey: Uint8List.fromList(hex.decode(json['public_key'] as String)),
    );
  }

  /// Returns the associated [address] as a Bech32 string.
  String get bech32Address {
    return Bech32Encoder.encode(
      hrp: networkInfo.bech32Hrp,
      data: address,
    );
  }

  /// Returns the associated [privateKey] as an [pc.ECPrivateKey] instance.
  pc.ECPrivateKey get _ecPrivateKey {
    final privateKeyInt = BigInt.parse(hex.encode(privateKey), radix: 16);

    return pc.ECPrivateKey(privateKeyInt, pc.ECCurve_secp256k1());
  }

  /// Returns the associated [publicKey] as an [pc.ECPublicKey] instance.
  pc.ECPublicKey get ecPublicKey {
    final secp256k1 = pc.ECCurve_secp256k1();
    final point = secp256k1.G;
    final curvePoint = point * _ecPrivateKey.d;

    return pc.ECPublicKey(curvePoint, pc.ECCurve_secp256k1());
  }

  /// Converts the current [Wallet] instance into a JSON object.
  /// Note that the private key is not serialized for safety reasons.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'hex_address': hex.encode(address),
      'bech32_address': bech32Address,
      'public_key': hex.encode(publicKey),
      'network_info': networkInfo.toJson(),
    };
  }

  @override
  List<Object> get props {
    return [
      networkInfo,
      address,
      privateKey,
      publicKey,
    ];
  }

  @override
  String toString() {
    return '{ '
        'networkInfo: $networkInfo, '
        'address: $address, '
        'publicKey: $publicKey '
        '}';
  }
}
