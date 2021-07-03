// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

/// Response only consists of nodeInfo.network as the rest is not required for now.
@JsonSerializable(explicitToJson: true)
class StatusResponse {
  @JsonKey(name: 'node_info')
  final NodeInfo nodeInfo;

  StatusResponse({required this.nodeInfo});

  factory StatusResponse.fromJson(Map<String, dynamic> json) {
    return _$StatusResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StatusResponseToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class NodeInfo {
  @JsonKey(name: 'network')
  final String network;

  NodeInfo({required this.network});

  factory NodeInfo.fromJson(Map<String, dynamic> json) {
    return _$NodeInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NodeInfoToJson(this);
  }
}
