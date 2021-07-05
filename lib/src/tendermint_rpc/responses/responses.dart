// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:bluzelle_dart/src/utils/export.dart';

part 'responses.g.dart';

/// [StatusResponse] only consists of [NodeInfo.network] as the rest is not
///   required for now. Add rest of the variables if required.
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

  @override
  String toString() {
    return '{ '
        'nodeInfo: $nodeInfo '
        '}';
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

  @override
  String toString() {
    return 'NodeInfo {'
        'network: $network '
        '}';
  }
}

@JsonSerializable(explicitToJson: true)
class BroadcastTxSyncResponse extends Equatable {
  @JsonKey(name: 'hash')
  @StringToUint8ListConverter()
  final Uint8List hash;

  BroadcastTxSyncResponse({required this.hash});

  factory BroadcastTxSyncResponse.fromJson(Map<String, dynamic> json) {
    return _$BroadcastTxSyncResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BroadcastTxSyncResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [hash];
  }

  @override
  String toString() {
    return '{ '
        'hash: $hash '
        '}';
  }
}
