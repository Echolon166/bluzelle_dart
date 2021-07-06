// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:bluzelle_dart/src/utils/export.dart';

part 'requests.g.dart';

/// RPC methods as documented in https://docs.tendermint.com/master/rpc/
///
/// Enum raw value must match the spelling in the "shell" example call (snake_case).

enum RequestMethod {
  abciInfo,
  abciQuery,
  block,
  blockchain,
  blockResults,
  blockSearch,
  broadcastTxAsync,
  broadcastTxSync,
  broadcastTxCommit,
  commit,
  genesis,
  health,
  status,
  subscribe,
  tx,
  txSearch,
  validators,
  unsubscribe,
}

extension RequestMethodExtension on RequestMethod {
  String get rawValue {
    switch (this) {
      case RequestMethod.abciInfo:
        return 'abci_info';
      case RequestMethod.abciQuery:
        return 'abci_query';
      case RequestMethod.block:
        return 'block';
      case RequestMethod.blockchain:
        return 'blockchain';
      case RequestMethod.blockResults:
        return 'block_results';
      case RequestMethod.blockSearch:
        return 'block_search';
      case RequestMethod.broadcastTxAsync:
        return 'broadcast_tx_async';
      case RequestMethod.broadcastTxSync:
        return 'broadcast_tx_sync';
      case RequestMethod.broadcastTxCommit:
        return 'broadcast_tx_commit';
      case RequestMethod.commit:
        return 'commit';
      case RequestMethod.genesis:
        return 'genesis';
      case RequestMethod.health:
        return 'health';
      case RequestMethod.status:
        return 'status';
      case RequestMethod.subscribe:
        return 'subscribe';
      case RequestMethod.tx:
        return 'tx';
      case RequestMethod.txSearch:
        return 'tx_search';
      case RequestMethod.validators:
        return 'validators';
      case RequestMethod.unsubscribe:
        return 'unsubscribe';
      default:
        return '';
    }
  }
}

/// Custom Request classes to be used by Tendermint34Client.

@JsonSerializable(explicitToJson: true)
class BroadcastTxSyncRequest extends Equatable {
  @JsonKey(name: 'tx')
  @Base64StringToUint8ListConverter()
  final Uint8List tx;

  BroadcastTxSyncRequest({required this.tx});

  factory BroadcastTxSyncRequest.fromJson(Map<String, dynamic> json) {
    return _$BroadcastTxSyncRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BroadcastTxSyncRequestToJson(this);
  }

  @override
  List<Object> get props {
    return [tx];
  }

  @override
  String toString() {
    return '{ '
        'tx: $tx '
        '}';
  }
}

@JsonSerializable(explicitToJson: true)
class TxSearchRequest extends Equatable {
  @JsonKey(name: 'query')
  final String query;

  @JsonKey(name: 'prove')
  final bool? prove;

  @JsonKey(name: 'page')
  @NullableInt64ToIntConverter()
  final fixnum.Int64? page;

  @JsonKey(name: 'per_page')
  @NullableInt64ToIntConverter()
  final fixnum.Int64? perPage;

  TxSearchRequest({
    required this.query,
    this.prove,
    this.page,
    this.perPage,
  });

  factory TxSearchRequest.fromJson(Map<String, dynamic> json) {
    return _$TxSearchRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TxSearchRequestToJson(this);
  }

  @override
  List<Object?> get props {
    return [
      query,
      prove,
      page,
      perPage,
    ];
  }

  @override
  String toString() {
    return '{ '
        'query: $query, '
        'prove: $prove, '
        'page: $page, '
        'perPage: $perPage '
        '}';
  }
}
