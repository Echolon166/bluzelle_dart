# Bluzelle Dart SDK

[![codecov](https://codecov.io/gh/Echolon166/bluzelle_dart/branch/main/graph/badge.svg?token=NXBSZBODD8)](https://codecov.io/gh/Echolon166/bluzelle_dart)

Dart package for interfacing with the Bluzelle database service, modelled after [@bluzelle/sdk-js](https://github.com/bluzelle/curium/tree/stargate/sdk/ts).

## Installation

`bluzelle` is currently not available on [pub.dev](https://pub.dev) but you can use it by referencing this repository in your `pubspec.yaml` as shown below:

```yaml
dependencies:
  bluzelle:
    git: https://github.com/Echolon166/bluzelle_dart.git
```

You can optionally pin your dependency to a specific commit, branch, or tag to avoid possible breaking changes:

```yaml
dependencies:
  bluzelle:
    git:
      url: https://github.com/Echolon166/bluzelle_dart.git
      ref: some-branch
```

## Quick Start

### Getting an account

In order to connect your instance to the Bluzelle testnet, you can get a new account by:

1. Mint an account by visiting **https://client.sentry.testnet.private.bluzelle.com:1317/mint**, which will provide a mnemonic and an address. This may take a while.

2. Check your balance at **https://client.sentry.testnet.private.bluzelle.com:1317/bank/balances/{address}**. If your account balance is 0, mint another account until a positive ubnt balance shows.

### Initialisation

Once you have your account and the package, you can create an sdk instance with:

```dart
import 'package:bluzelle/bluzelle.dart';

void main() {
  final sdk = bluzelle(
    mnemonic: mnemonic_from_mint_endpoint,
    host : 'wss://client.sentry.testnet.private.bluzelle.com',
    port: 26657,  // Optional. Defaults to 26657.
    maxGas: 100000000,
    gasPrice: 0.002,
  );
}
```

\*Note: If the specified maxGas and/or gasPrice is too low, any transaction may be rejected by a validator (e.g. a transaction requires more gas than maxGas specified, or the gasPrice is too low to cover validator fees). The default suggestion for these fields above will suffice.

#### Websockets vs. HTTPS

- Currently the sdk supports both websocket and https connections to the Bluzelle testnet.
- Use **websockets** (wss://client.sentry.testnet.private.bluzelle.com) for greater performance.
- For **https** pass the host https://client.sentry.testnet.private.bluzelle.com to the bluzelle constructor.

## Usage

### Sdk Hierarchy

After configuring your sdk, you will have access to various modules and their corresponding methods.

- **Hierarchical format:**

```
sdk.[module].[q or tx or field].[method](ClientContext, MethodRequest(...request fields))
```

- **Available Modules:** db, bank
- **Available Fields:** url, address, withTransactions()

### Queries

Each method takes two parameters(ClientContext and MethodRequest) as objects (i.e. Method(ClientContext, MethodRequest)), and returns an object (i.e. MethodResponse). To see the MethodRequest and MethodResponse types, see the [/proto/[module]](proto) for queries and transactions.

\*Note: ClientContext is used to set timeout of the RPC call, this method is not included in the library and can be passed as a `null`.

\*\*Note: See [dart-lang/protobuf](https://github.com/dart-lang/protobuf/blob/aac6fc4253b0d0cc4ac5187dc9585c6cc6579769/protobuf/lib/src/protobuf/rpc_client.dart#L8) for further information.

- Crud module query:

```dart
sdk.db.q.read(
  null,
  QueryReadRequest(       // Takes a MsgCreate object.
    uuid: 'uuid',
    key: 'myKey',
  ),
)
.then((resp) => resp.value);

// Returns a future of a QueryReadResponse object*.
```

\*Note: resp.value is a List\<int\> representing the byte-encoded value that had been queried. To get the string-representation of the value, use utf8.decode(resp.value).

- Bank module query:

```dart
sdk.bank.q.balance(
  null,
  QueryBalanceRequest(
    address: sdk.bank.address,      // You can access your sdk's bluzelle address.
    denom: 'ubnt',
  ),
);
```

### Transactions

The sdk can also send transactions to the chain. Each module has a tx method to send various transaction messages.

- Crud module tx:

```dart
sdk.db.tx.create_(
  null,
  MsgCreate(                            // Takes a MsgCreate object.
    creator: sdk.db.address,            // The creator of the transaction should always be the sender's address*.
    uuid: 'uuid',
    key: 'myKey',
    value: utf8.encode('myValue'),      // Values are stored as byte lists.
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),  // Lease object to specify lifespan of key-value**.
  ),
);

// Returns a future of a MsgCreateResponse.
```

\*Note: The sdk is signing and sending the transaction, so the signer address must match the creator of the transaction. Otherwise, an error will be thrown.

\*\*Note: See [lease.pb.dart](lib/src/codec/crud/lease.pb.dart) to see the Lease class.

- Bank module tx:

```dart
sdk.bank.tx.send(
  null,
  MsgSend(
    amount: [
      Coin(
        denom: 'ubnt',
        amount: '300',
      ),
    ],
    fromAddress: sdk.bank.address,
    toAddress: [some_bluzelle_address],
  ),
);
```

### withTransactions([...])

Wrap multiple messages in a single transaction.

```dart
sdk.db.withTransactions(
  [
    MsgCreate(
      creator: sdk.db.address,
      uuid: uuid,
      key: 'firstKey',
      value: utf8.encode('firstValue'),
      metadata: [],
      lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
    ),
    MsgCreate(
      creator: sdk.db.address,
      uuid: uuid,
      key: 'secondKey',
      value: utf8.encode('secondValue'),
      metadata: [],
      lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
    ),
    MsgRenewLeasesAll(
      creator: sdk.db.address,
      uuid: uuid,
      lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
    )
  ],
  memo: 'optionalMemo',     // Optional.
);
```

\*Note: If any of the messages which are passed to withTransactions fail, then all messages will fail and not be committed to a block.

## CRUD (db) module methods

- **Transactions**
  - **<a href="#Create">create\_({...}) </a>**
  - **<a href="#Delete">delete({...}) </a>**
  - **<a href="#DeleteAll">deleteAll({...}) </a>**
  - **<a href="#MultiUpdate">multiUpdate({...}) </a>**
  - **<a href="#Rename">rename({...}) </a>**
  - **<a href="#RenewLease">renewLease({...}) </a>**
  - **<a href="#RenewLeasesAll">renewLeasesAll({...}) </a>**
  - **<a href="#Update">update({...}) </a>**
  - **<a href="#Upsert">upsert({...}) </a>**
- **Queries**
  - **<a href="#Count">count({...}) </a>**
  - **<a href="#GetLease">getLease({...}) </a>**
  - **<a href="#GetNShortestLeases">getNShortestLeases({...}) </a>**
  - **<a href="#Has">has({...}) </a>**
  - **<a href="#Keys">keys({...}) </a>**
  - **<a href="#KeyValues">keyValues({...}) </a>**
  - **<a href="#MyKeys">myKeys({...}) </a>**
  - **<a href="#Read">read({...}) </a>**
  - **<a href="#Search">search({...}) </a>**

## Transactions

- ### create\_\(MsgCreate) <a id="Create"></a>

Create a key-value in the database.

```dart
final createResponse = await sdk.db.tx.create_(
  null,
  MsgCreate(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'myKey',
    value: utf8.encode('myValue'),
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
);

.....

sdk.db.tx.create_(
  null,
  MsgCreate(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'myKey',
    value: utf8.encode('myValue'),
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgCreateResponse\> (empty object)

| MsgCreate | Description         | Type        |
| :-------- | :------------------ | :---------- |
| creator   | Signer address      | String      |
| uuid      | Database identifier | String      |
| key       |                     | String      |
| value     |                     | List\<int\> |
| metadata  |                     | List\<int\> |
| lease     | Key-value life-span | Lease \*    |

\*Lease {seconds: int, minutes: int, hours: int, days: int, years: int}

- ### delete\(MsgDelete)<a id="Delete"></a>

Delete a key-value in the database.

```dart
final deleteResponse = await sdk.db.tx.delete(
  null,
  MsgDelete(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'myKey',
  ),
);

.....

sdk.db.tx.delete(
  null,
  MsgDelete(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'myKey',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgDeleteResponse\> (empty object)

| MsgDelete | Description         | Type   |
| :-------- | :------------------ | :----- |
| creator   | Signer address      | String |
| uuid      | Database identifier | String |
| key       | Key to delete       | String |

- ### deleteAll\(MsgDeleteAll)<a id="DeleteAll"></a>

Delete all key-values in the database.

```dart
final deleteAllResponse = await sdk.db.tx.deleteAll(
  null,
  MsgDeleteAll(
    creator: sdk.db.address,
    uuid: 'uuid',
  ),
);

.....

sdk.db.tx.deleteAll(
  null,
  MsgDeleteAll(
    creator: sdk.db.address,
    uuid: 'uuid',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgDeleteAllResponse\> (empty object)

| MsgDeleteAll | Description         | Type   |
| :----------- | :------------------ | :----- |
| creator      | Signer address      | String |
| uuid         | Database identifier | String |

- ### multiUpdate\(MsgMultiUpdate)<a id="MultiUpdate"></a>

Update a set of key-values in the specified uuid.

```dart
final multiUpdateResponse = await sdk.db.tx.multiUpdate(
  null,
  MsgMultiUpdate(
    creator: sdk.db.address,
    uuid: 'uuid',
    keyValues: [
      KeyValueLease(
        key: 'existingKey1',
        value: utf8.encode('newValue1'),
        lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
      ),
      KeyValueLease(
        key: 'existingKey2',
        value: utf8.encode('newValue2'),
        lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
      ),
    ],
  ),
);

.....

sdk.db.tx.multiUpdate(
  null,
  MsgMultiUpdate(
    creator: sdk.db.address,
    uuid: 'uuid',
    keyValues: [
      KeyValueLease(
        key: 'existingKey1',
        value: utf8.encode('newValue1'),
        lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
      ),
      KeyValueLease(
        key: 'existingKey2',
        value: utf8.encode('newValue2'),
        lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
      ),
    ],
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgMultiUpdateResponse\> (empty object)

| MsgMultiUpdate | Description         | Type                         |
| :------------- | :------------------ | :--------------------------- |
| creator        | Signer address      | String                       |
| uuid           | Database identifier | String                       |
| keyValues      |                     | Iterable\<KeyValueLease \*\> |

\* KeyValueLease {key: String, value: List\<int\>, lease: Lease \*\*}

\*\*Lease {seconds: int, minutes: int, hours: int, days: int, years: int}

- ### rename\(MsgRename)<a id="Rename"></a>

Rename a key-value in the database.

```dart
final renameResponse = await sdk.db.tx.rename(
  null,
  MsgRename(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'existingKey',
    newKey: 'renamingKey',
  ),
);

.....

sdk.db.tx.rename(
  null,
  MsgRename(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'existingKey',
    newKey: 'renamingKey',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgRenameResponse\> (empty object)

| MsgRename | Description            | Type   |
| :-------- | :--------------------- | :----- |
| creator   | Signer address         | String |
| uuid      | Database identifier    | String |
| key       | Existing key           | String |
| newKey    | New key used to rename | String |

- ### renewLease\(MsgRenewLease)<a id="RenewLease"></a>

Renew the lease of a key-value in the database.

```dart
final renewLeaseResponse = await sdk.db.tx.renewLease(
  null,
  MsgRenewLease(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'existingKey',
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
);

.....

sdk.db.tx.renewLease(
  null,
  MsgRenewLease(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'existingKey',
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgRenewLeaseResponse\> (empty object)

| MsgRenewLease | Description                 | Type     |
| :------------ | :-------------------------- | :------- |
| creator       | Signer address              | String   |
| uuid          | Database identifier         | String   |
| key           |                             | String   |
| lease         | New life-span for key-value | Lease \* |

\*Lease {seconds: int, minutes: int, hours: int, days: int, years: int}

- ### renewLeasesAll\(MsgRenewLeasesAll)<a id="RenewLeasesAll"></a>

Renew all the leases of key-values in the specified uuid.

```dart
final renewLeasesAllResponse = await sdk.db.tx.renewLeasesAll(
  null,
  MsgRenewLeasesAll(
    creator: sdk.db.address,
    uuid: 'uuid',
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
);

.....

sdk.db.tx.renewLeasesAll(
  null,
  MsgRenewLeasesAll(
    creator: sdk.db.address,
    uuid: 'uuid',
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgRenewLeasesAllResponse\> (empty object)

| MsgRenewLeasesAll | Description                      | Type     |
| :---------------- | :------------------------------- | :------- |
| creator           | Signer address                   | String   |
| uuid              | Database identifier              | String   |
| lease             | New life-span for all key-values | Lease \* |

\*Lease {seconds: int, minutes: int, hours: int, days: int, years: int}

- ### update\(MsgUpdate)<a id="Update"></a>

Update a key-value in the database.

```dart
final updateResponse = await sdk.db.tx.update(
  null,
  MsgUpdate(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'existingKey',
    value: utf8.encode('newValue'),
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
);

.....

sdk.db.tx.update(
  null,
  MsgUpdate(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'existingKey',
    value: utf8.encode('newValue'),
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgUpdateResponse\> (empty object)

| MsgUpdate | Description            | Type        |
| :-------- | :--------------------- | :---------- |
| creator   | Signer address         | String      |
| uuid      | Database identifier    | String      |
| key       |                        | String      |
| value     | New value to update to | List\<int\> |
| metadata  |                        | List\<int\> |
| lease     | Key-value life-span    | Lease \*    |

\*Lease {seconds: int, minutes: int, hours: int, days: int, years: int}

- ### upsert\(MsgUpsert)<a id="Upsert"></a>

Upsert a key-value in the database: create a key-value if the key doesn't exist, update the key-value if the key exists.

```dart
final upsertResponse = await sdk.db.tx.upsert(
  null,
  MsgUpsert(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'keyToUpsert',
    value: utf8.encode('valueToUpsert'),
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
);

.....

sdk.db.tx.upsert(
  null,
  MsgUpsert(
    creator: sdk.db.address,
    uuid: 'uuid',
    key: 'keyToUpsert',
    value: utf8.encode('valueToUpsert'),
    metadata: [],
    lease: Lease(seconds: 0, minutes: 0, hours: 1, days: 0, years: 0),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<MsgUpsertResponse\> (empty object)

| MsgUpsert | Description         | Type        |
| :-------- | :------------------ | :---------- |
| creator   | Signer address      | String      |
| uuid      | Database identifier | String      |
| key       |                     | String      |
| value     |                     | List\<int\> |
| metadata  |                     | List\<int\> |
| lease     | Key-value life-span | Lease \*    |

\*Lease {seconds: int, minutes: int, hours: int, days: int, years: int}

## Queries

- ### count\(QueryCountRequest)<a id="Count"></a>

Query the total number of key-values in the specified uuid.

```dart
final countResponse = await sdk.db.q.count(
  null,
  QueryCountRequest(
    uuid: 'uuid',
  ),
);

.....

sdk.db.q.count(
  null,
  QueryCountRequest(
    uuid: 'uuid',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryCountResponse\>

| QueryCountRequest | Description         | Type   |
| :---------------- | :------------------ | :----- |
| uuid              | Database identifier | String |

| QueryCountResponse | Description                      | Type |
| :----------------- | :------------------------------- | :--- |
| count              | Number of key-values in the uuid | int  |

- ### getLease\(QueryGetLeaseRequest)<a id="GetLease"></a>

Get the remaining lease time of a key-value.

```dart
final getLeaseResponse = await sdk.db.q.getLease(
  null,
  QueryGetLeaseRequest(
    uuid: 'uuid',
    key: 'myKey',
  ),
);

.....

sdk.db.q.getLease(
  null,
  QueryGetLeaseRequest(
    uuid: 'uuid',
    key: 'myKey',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryGetLeaseResponse\>

| QueryGetLeaseRequest | Description         | Type   |
| :------------------- | :------------------ | :----- |
| uuid                 | Database identifier | String |
| key                  |                     | String |

| QueryGetLeaseResponse | Description                       | Type |
| :-------------------- | :-------------------------------- | :--- |
| seconds               | Remaining lease time of key-value | int  |

- ### getNShortestLeases\(QueryGetNShortestLeasesRequest)<a id="GetNShortestLeases"></a>

Get the remaining lease time of a n key-values.

```dart
final getNShortestLeasesResponse = await sdk.db.q.getNShortestLeases(
  null,
  QueryGetNShortestLeasesRequest(
    uuid: 'uuid',
    num: 10,
  ),
);

.....

sdk.db.q.getNShortestLeases(
  null,
  QueryGetNShortestLeasesRequest(
    uuid: 'uuid',
    num: 10,
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryGetNShortestLeasesResponse\>

| QueryGetNShortestLeasesRequest | Description                   | Type   |
| :----------------------------- | :---------------------------- | ------ |
| uuid                           | Database identifier           | String |
| num                            | Number of keyLeases to return | int    |

| QueryGetNShortestLeasesResponse | Description | Type                    |
| :------------------------------ | :---------- | ----------------------- |
| keyLeases                       |             | Iterable\<KeyLease \*\> |

\* KeyLease {key: String, seconds: int}

- ### has\(QueryHasRequest)<a id="Has"></a>

Check if a key exists in the specified uuid.

```dart
final hasResponse = await sdk.db.q.has(
  null,
  QueryHasRequest(
    uuid: 'uuid',
    key: 'myKey',
  ),
);

.....

sdk.db.q.has(
  null,
  QueryHasRequest(
    uuid: 'uuid',
    key: 'myKey',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryHasResponse\>

| QueryHasRequest | Description         | Type   |
| :-------------- | :------------------ | ------ |
| uuid            | Database identifier | String |
| key             |                     | String |

| QueryHasResponse | Description                                 | Type |
| :--------------- | :------------------------------------------ | ---- |
| has              | True if key exists in uuid; false otherwise | bool |

- ### keys\(QueryKeysRequest}<a id="Keys"></a>

Read the complete set of keys in the specified uuid.

```dart
final keysResponse = await sdk.db.q.keys(
  null,
  QueryKeysRequest(
    uuid: 'uuid',
    pagination: PagingRequest(
      startKey: 'key-a',
      limit: 50.toInt64(),
    ),
  ),
);

.....

sdk.db.q.keys(
  null,
  QueryKeysRequest(
    uuid: 'uuid',
    pagination: PagingRequest(
      startKey: 'key-a',
      limit: 50.toInt64(),
    ),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryKeysResponse\>

| QueryKeysRequest      | Description         | Type             |
| :-------------------- | :------------------ | ---------------- |
| uuid                  | Database identifier | String           |
| pagination (optional) |                     | PagingRequest \* |

\* PagingRequest {startKey: String, limit: Int64}

| QueryKeysResponse     | Description | Type               |
| :-------------------- | :---------- | ------------------ |
| keys                  |             | Iterable\<String\> |
| pagination (optional) |             | PagingResponse \*  |

\* PagingResponse {nextKey: String, total: Int64}

- ### keyValues\(QueryKeyValuesRequest)<a id="KeyValues"></a>

Read the complete set of key-values in the specified uuid.

```dart
final keyValuesResponse = await sdk.db.q.keyValues(
  null,
  QueryKeyValuesRequest(
    uuid: 'uuid',
    pagination: PagingRequest(
      startKey: 'key-a',
      limit: 50.toInt64(),
    ),
  ),
);

.....

sdk.db.q.keyValues(
  null,
  QueryKeyValuesRequest(
    uuid: 'uuid',
    pagination: PagingRequest(
      startKey: 'key-a',
      limit: 50.toInt64(),
    ),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryKeyValuesResponse\>

| QueryKeyValuesRequest | Description         | Type             |
| :-------------------- | :------------------ | ---------------- |
| uuid                  | Database identifier | String           |
| pagination (optional) |                     | PagingRequest \* |

\* PagingRequest {startKey: String, limit: Int64}

| QueryKeyValuesResponse | Description | Type                    |
| :--------------------- | :---------- | ----------------------- |
| keyValues              |             | Iterable\<KeyValue \*\> |
| pagination (optional)  |             | PagingResponse \*\*     |

\* KeyValue {key: String, value: List\<int\>}

\*\* PagingResponse {nextKey: String, total: Int64}

- ### myKeys\(QueryMyKeysRequest)<a id="MyKeys"></a>

Read he complete set of keys by address in the specified uuid.

```dart
final myKeysResponse = await sdk.db.q.myKeys(
  null,
  QueryMyKeysRequest(
    uuid: 'uuid',
    address: sdk.db.address,
    pagination: PagingRequest(
      startKey: 'key-a',
      limit: 50.toInt64(),
    ),
  ),
);

.....

sdk.db.q.myKeys(
  null,
  QueryMyKeysRequest(
    uuid: 'uuid',
    address: sdk.db.address,
    pagination: PagingRequest(
      startKey: 'key-a',
      limit: 50.toInt64(),
    ),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryMyKeysResponse\>

| QueryMyKeysRequest    | Description         | Type             |
| :-------------------- | :------------------ | ---------------- |
| uuid                  | Database identifier | String           |
| address               | Bluzelle address    | String           |
| pagination (optional) |                     | PagingRequest \* |

\*PagingRequest {startKey: String, limit: Int64}

| QueryMyKeysResponse   | Description                      | Type               |
| :-------------------- | :------------------------------- | ------------------ |
| keys                  | Number of key-values in the uuid | Iterable\<String\> |
| pagination (optional) |                                  | PagingResponse \*  |

\*PagingResponse {nextKey: String, total: Int64}

- ### read\(QueryReadRequest)<a id="Read"></a>

Read the complete set of keys by address in the specified uuid.

```dart
final readResponse = await sdk.db.q.read(
  null,
  QueryReadRequest(
    uuid: 'uuid',
    key: 'existingKey',
  ),
);

.....

sdk.db.q.read(
  null,
  QueryReadRequest(
    uuid: 'uuid',
    key: 'existingKey',
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QueryReadResponse\>

| QueryReadRequest | Description         | Type   |
| :--------------- | :------------------ | ------ |
| uuid             | Database identifier | String |
| key              |                     | String |

| QueryReadResponse | Description | Type        |
| :---------------- | :---------- | ----------- |
| value             |             | List\<int\> |

- ### search\(QuerySearchRequest)<a id="Search"></a>

Search by key in the specified uuid.

```dart
final searchResponse = await sdk.db.q.search(
  null,
  QuerySearchRequest(
    uuid: 'uuid',
    searchString: 'keyPrefix',
    pagination: PagingRequest(
      startKey: 'keyPrefix-A',
      limit: 50.toInt64(),
    ),
  ),
);

.....

sdk.db.q.search(
  null,
  QuerySearchRequest(
    uuid: 'uuid',
    searchString: 'keyPrefix',
    pagination: PagingRequest(
      startKey: 'keyPrefix-A',
      limit: 50.toInt64(),
    ),
  ),
)
  .then((resp) => {...})
  .catchError((err) => {...});
```

Returns: Future\<QuerySearchResponse\>

| QuerySearchRequest    | Description                                          | Type             |
| :-------------------- | :--------------------------------------------------- | ---------------- |
| uuid                  | Database identifier                                  | String           |
| searchString          | Query for keys that start with or match searchString | String           |
| pagination (optional) |                                                      | PagingRequest \* |

\* PagingRequest {startKey: String, limit: Int64}

| QuerySearchResponse   | Description                      | Type                    |
| :-------------------- | :------------------------------- | ----------------------- |
| keyValues             | Number of key-values in the uuid | Iterable\<KeyValue \*\> |
| pagination (optional) |                                  | PagingResponse \*\*     |

\* KeyValue {key: String, value: List\<int\>}

\*\* PagingResponse {nextKey: String, total: Int64}

## Development

- To rebuild the generated code (eg. for JSON serialisation):

```shell
dart pub run build_runner build
```

- To download the required Protobuf files and generate their implementations:

```shell
./tool/generate_proto.sh
```

Note: If you want to include new Protobuf files, you can add them to the [get_proto.sh](tool/get_proto.sh).

- To run the tests:

```shell
dart pub run test test/
```

Note: All of the tests are getting run after every commit via github actions.
