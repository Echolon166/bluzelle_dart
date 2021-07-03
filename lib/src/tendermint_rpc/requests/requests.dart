/// RPC methods as documented in https://docs.tendermint.com/master/rpc/
///
/// Enum raw value must match the spelling in the "shell" example call (snake_case)

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
