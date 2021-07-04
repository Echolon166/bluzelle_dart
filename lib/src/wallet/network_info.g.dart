// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TendermintRpcInfo _$TendermintRpcInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['host']);
  return TendermintRpcInfo(
    host: json['host'] as String,
    port: json['port'] as int? ?? 26657,
  );
}

Map<String, dynamic> _$TendermintRpcInfoToJson(TendermintRpcInfo instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
    };

NetworkInfo _$NetworkInfoFromJson(Map<String, dynamic> json) {
  return NetworkInfo(
    bech32Hrp: json['bech32_hrp'] as String? ?? 'bluzelle',
    tendermintRpcInfo: TendermintRpcInfo.fromJson(
        json['tendermint_rpc_info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NetworkInfoToJson(NetworkInfo instance) =>
    <String, dynamic>{
      'bech32_hrp': instance.bech32Hrp,
      'tendermint_rpc_info': instance.tendermintRpcInfo.toJson(),
    };
