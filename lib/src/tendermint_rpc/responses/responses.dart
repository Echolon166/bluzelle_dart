// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:bluzelle_dart/src/utils/export.dart';

part 'responses.g.dart';

/// Custom Response classes to be used by Tendermint34Client.
/// Some responses has missing variables as these variables are not required
///   for now(and adding them is rather exhausting). If required, add them.

@JsonSerializable(explicitToJson: true)
class StatusResponse extends Equatable {
  @JsonKey(name: 'node_info')
  final NodeInfo nodeInfo;

  // Missing: sync_info
  //          validator_info

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

  // Missing: protocol_version
  //          id
  //          listen_addr
  //          version
  //          channels
  //          moniker
  //          other

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

@JsonSerializable(explicitToJson: true)
class TxSearchResponse extends Equatable {
  @JsonKey(name: 'txs')
  final List<TxResponse> txs;

  @JsonKey(name: 'total_count')
  @StringToIntConverter()
  final int totalCount;

  TxSearchResponse({
    required this.txs,
    required this.totalCount,
  });

  factory TxSearchResponse.fromJson(Map<String, dynamic> json) {
    return _$TxSearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TxSearchResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [
      txs,
      totalCount,
    ];
  }

  @override
  String toString() {
    return '{ '
        'txs: $txs, '
        'totalCount: $totalCount, '
        '}';
  }
}

@JsonSerializable(explicitToJson: true)
class TxResponse extends Equatable {
  @JsonKey(name: 'hash')
  @StringToUint8ListConverter()
  final Uint8List hash;

  @JsonKey(name: 'tx_result')
  final TxResult txResult;

  @JsonKey(name: 'tx')
  @StringToUint8ListConverter()
  final Uint8List tx;

  // Missing: proof
  //          height
  //          index

  TxResponse({
    required this.hash,
    required this.txResult,
    required this.tx,
  });

  factory TxResponse.fromJson(Map<String, dynamic> json) {
    return _$TxResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TxResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [
      hash,
      txResult,
      tx,
    ];
  }

  @override
  String toString() {
    return 'TxResponse {'
        'hash: $hash, '
        'txResult: $txResult, '
        'tx: $tx '
        '}';
  }
}

@JsonSerializable(explicitToJson: true)
class TxResult extends Equatable {
  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'log')
  final String? log;

  @JsonKey(name: 'codespace')
  final String? codeSpace;

  // Missing: gas_wanted
  //          gas_used
  //          events
  //          codespace
  //          data

  TxResult({
    required this.code,
    this.log,
    this.codeSpace,
  });

  factory TxResult.fromJson(Map<String, dynamic> json) {
    return _$TxResultFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TxResultToJson(this);
  }

  @override
  List<Object?> get props {
    return [
      code,
      log,
      codeSpace,
    ];
  }

  @override
  String toString() {
    return 'TxResult {'
        'code: $code, '
        'log: $log, '
        'codeSpace: $codeSpace '
        '}';
  }
}
