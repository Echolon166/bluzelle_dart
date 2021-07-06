// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BroadcastTxSyncRequest _$BroadcastTxSyncRequestFromJson(
    Map<String, dynamic> json) {
  return BroadcastTxSyncRequest(
    tx: const Base64StringToUint8ListConverter().fromJson(json['tx'] as String),
  );
}

Map<String, dynamic> _$BroadcastTxSyncRequestToJson(
        BroadcastTxSyncRequest instance) =>
    <String, dynamic>{
      'tx': const Base64StringToUint8ListConverter().toJson(instance.tx),
    };

TxSearchRequest _$TxSearchRequestFromJson(Map<String, dynamic> json) {
  return TxSearchRequest(
    query: json['query'] as String,
    prove: json['prove'] as bool?,
    page: const NullableInt64ToIntConverter().fromJson(json['page'] as int?),
    perPage:
        const NullableInt64ToIntConverter().fromJson(json['per_page'] as int?),
  );
}

Map<String, dynamic> _$TxSearchRequestToJson(TxSearchRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'prove': instance.prove,
      'page': const NullableInt64ToIntConverter().toJson(instance.page),
      'per_page': const NullableInt64ToIntConverter().toJson(instance.perPage),
    };
