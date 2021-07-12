// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:bluzelle/src/tendermint_rpc/export.dart';

part 'network_info.g.dart';

/// Contains the information about the Tendermint RPC endpoint.
@JsonSerializable(explicitToJson: true)
class TendermintRpcInfo extends Equatable {
  static Tendermint34Client? _tendermint34Client;

  @JsonKey(name: 'host', required: true)
  final String host;

  @JsonKey(name: 'port', defaultValue: 26657)
  final int port;

  TendermintRpcInfo({
    required this.host,
    this.port = 26657,
  });

  /// Returns existing [Tendermint34Client] or creates a new one.
  Tendermint34Client getClient() {
    return _tendermint34Client ??= Tendermint34Client.connect(
      host: host,
      port: port,
    );
  }

  factory TendermintRpcInfo.fromJson(Map<String, dynamic> json) {
    return _$TendermintRpcInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TendermintRpcInfoToJson(this);
  }

  @override
  List<Object?> get props {
    return [
      host,
      port,
    ];
  }

  @override
  String toString() {
    return 'TendermintRpcInfo { '
        'host: $host, '
        'port: $port '
        '}';
  }
}

/// Contains the information of a generic Cosmos-based network.
@JsonSerializable(explicitToJson: true)
class NetworkInfo extends Equatable {
  /// Bech32 human readable part of the addresses related to this network.
  @JsonKey(name: 'bech32_hrp', defaultValue: 'bluzelle')
  final String bech32Hrp;

  /// Information about the Tendermint RPC endpoint to use.
  @JsonKey(name: 'tendermint_rpc_info')
  final TendermintRpcInfo tendermintRpcInfo;

  NetworkInfo({
    this.bech32Hrp = 'bluzelle',
    required this.tendermintRpcInfo,
  });

  /// Creates a [NetworkInfo] instance using given [host].
  factory NetworkInfo.fromHost({
    String? hrp,
    required String host,
  }) {
    return NetworkInfo(
      bech32Hrp: hrp ?? 'bluzelle',
      tendermintRpcInfo: TendermintRpcInfo(
        host: host,
      ),
    );
  }

  /// Creates a [NetworkInfo] instance using given [host] and [port].
  factory NetworkInfo.fromHostAndPort({
    String? hrp,
    required String host,
    required int port,
  }) {
    return NetworkInfo(
      bech32Hrp: hrp ?? 'bluzelle',
      tendermintRpcInfo: TendermintRpcInfo(
        host: host,
        port: port,
      ),
    );
  }

  /// Returns the [Tendermint34Client] that should be used to connect
  ///   to the Tendermint RPC endpoint.
  Tendermint34Client get tendermint34Client {
    return tendermintRpcInfo.getClient();
  }

  String get url {
    return '${tendermintRpcInfo.host}:${tendermintRpcInfo.port.toString()}';
  }

  factory NetworkInfo.fromJson(Map<String, dynamic> json) {
    return _$NetworkInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NetworkInfoToJson(this);
  }

  @override
  List<Object?> get props {
    return [
      bech32Hrp,
      tendermintRpcInfo,
    ];
  }

  @override
  String toString() {
    return 'NetworkInfo { '
        'bech32Hrp: $bech32Hrp, '
        'tendermintRpcInfo: $tendermintRpcInfo '
        '}';
  }
}
