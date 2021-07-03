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
