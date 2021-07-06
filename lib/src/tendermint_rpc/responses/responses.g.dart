// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) {
  return StatusResponse(
    nodeInfo: NodeInfo.fromJson(json['node_info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatusResponseToJson(StatusResponse instance) =>
    <String, dynamic>{
      'node_info': instance.nodeInfo.toJson(),
    };

NodeInfo _$NodeInfoFromJson(Map<String, dynamic> json) {
  return NodeInfo(
    network: json['network'] as String,
  );
}

Map<String, dynamic> _$NodeInfoToJson(NodeInfo instance) => <String, dynamic>{
      'network': instance.network,
    };

BroadcastTxSyncResponse _$BroadcastTxSyncResponseFromJson(
    Map<String, dynamic> json) {
  return BroadcastTxSyncResponse(
    hash: const StringToUint8ListConverter().fromJson(json['hash'] as String),
  );
}

Map<String, dynamic> _$BroadcastTxSyncResponseToJson(
        BroadcastTxSyncResponse instance) =>
    <String, dynamic>{
      'hash': const StringToUint8ListConverter().toJson(instance.hash),
    };

TxSearchResponse _$TxSearchResponseFromJson(Map<String, dynamic> json) {
  return TxSearchResponse(
    txs: (json['txs'] as List<dynamic>)
        .map((e) => TxResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalCount:
        const StringToIntConverter().fromJson(json['total_count'] as String),
  );
}

Map<String, dynamic> _$TxSearchResponseToJson(TxSearchResponse instance) =>
    <String, dynamic>{
      'txs': instance.txs.map((e) => e.toJson()).toList(),
      'total_count': const StringToIntConverter().toJson(instance.totalCount),
    };

TxResponse _$TxResponseFromJson(Map<String, dynamic> json) {
  return TxResponse(
    hash: const StringToUint8ListConverter().fromJson(json['hash'] as String),
    txResult: TxResult.fromJson(json['tx_result'] as Map<String, dynamic>),
    tx: const StringToUint8ListConverter().fromJson(json['tx'] as String),
  );
}

Map<String, dynamic> _$TxResponseToJson(TxResponse instance) =>
    <String, dynamic>{
      'hash': const StringToUint8ListConverter().toJson(instance.hash),
      'tx_result': instance.txResult.toJson(),
      'tx': const StringToUint8ListConverter().toJson(instance.tx),
    };

TxResult _$TxResultFromJson(Map<String, dynamic> json) {
  return TxResult(
    code: json['code'] as int,
    log: json['log'] as String?,
    codeSpace: json['codespace'] as String?,
    events: (json['events'] as List<dynamic>)
        .map((e) => Event.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TxResultToJson(TxResult instance) => <String, dynamic>{
      'code': instance.code,
      'log': instance.log,
      'codespace': instance.codeSpace,
      'events': instance.events.map((e) => e.toJson()).toList(),
    };

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'type': instance.type,
    };
