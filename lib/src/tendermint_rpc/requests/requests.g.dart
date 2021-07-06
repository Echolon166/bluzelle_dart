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
