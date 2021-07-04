// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

/// Response only consists of nodeInfo.network as the rest is not required for now.
@JsonSerializable(explicitToJson: true)
class StatusResponse extends Equatable {
  @JsonKey(name: 'node_info')
  final NodeInfo nodeInfo;

  StatusResponse({required this.nodeInfo});

  factory StatusResponse.fromJson(Map<String, dynamic> json) {
    return _$StatusResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StatusResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [nodeInfo];
  }
}

@JsonSerializable(explicitToJson: true)
class NodeInfo extends Equatable {
  @JsonKey(name: 'network')
  final String network;

  NodeInfo({required this.network});

  factory NodeInfo.fromJson(Map<String, dynamic> json) {
    return _$NodeInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NodeInfoToJson(this);
  }

  @override
  List<Object> get props {
    return [network];
  }
}
