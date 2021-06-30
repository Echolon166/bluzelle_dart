/// RPC methods as documented in https://docs.tendermint.com/master/rpc/
///
/// Enum raw value must match the spelling in the "shell" example call (snake_case)

enum Method {
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

extension MethodExtension on Method {
  String get rawValue {
    switch (this) {
      case Method.abciInfo:
        return 'abci_info';
      case Method.abciQuery:
        return 'abci_query';
      case Method.block:
        return 'block';
      case Method.blockchain:
        return 'blockchain';
      case Method.blockResults:
        return 'block_results';
      case Method.blockSearch:
        return 'block_search';
      case Method.broadcastTxAsync:
        return 'broadcast_tx_async';
      case Method.broadcastTxSync:
        return 'broadcast_tx_sync';
      case Method.broadcastTxCommit:
        return 'broadcast_tx_commit';
      case Method.commit:
        return 'commit';
      case Method.genesis:
        return 'genesis';
      case Method.health:
        return 'health';
      case Method.status:
        return 'status';
      case Method.subscribe:
        return 'subscribe';
      case Method.tx:
        return 'tx';
      case Method.txSearch:
        return 'tx_search';
      case Method.validators:
        return 'validators';
      case Method.unsubscribe:
        return 'unsubscribe';
      default:
        return '';
    }
  }
}
