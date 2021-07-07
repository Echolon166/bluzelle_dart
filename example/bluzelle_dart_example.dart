import 'dart:convert';

import 'package:bluzelle_dart/bluzelle_dart.dart';

Future<void> populateUuid(BluzelleSdk sdk) async {
  await sdk.db.withTransactions(
    [
      MsgCreate(
        creator: sdk.db.address,
        uuid: uuid,
        key: 'firstKey',
        value: utf8.encode('firstValue'),
        metadata: [],
        lease: Lease(hours: 1),
      ),
      MsgCreate(
        creator: sdk.db.address,
        uuid: uuid,
        key: 'secondKey',
        value: utf8.encode('secondValue'),
        metadata: [],
        lease: Lease(hours: 1),
      ),
      MsgCreate(
        creator: sdk.db.address,
        uuid: uuid,
        key: 'thirdKey',
        value: utf8.encode('thirdValue'),
        metadata: [],
        lease: Lease(hours: 1),
      )
    ],
    memo: 'optionalMemo',
  );
}

// TODO: diffCostForLeaseChange()

// TODO: diffCostForEqualSizeCreates()

final uuid = DateTime.now().millisecondsSinceEpoch.toString();

Future<void> main() async {
  final sdk = bluzelle(
    /* TODO: mnemonic:
        'switch wing oven chat cargo smile hello broken fluid puzzle endorse family divorce boat viable mutual film steel future casino economy lens december roast',
    host: 'wss://client.sentry.testnet.private.bluzelle.com', */
    host: 'http://localhost',
    mnemonic:
        'purpose month upgrade carpet cactus pink private target afford denial luxury club rocket spice test lesson wave skirt identify impose dilemma maximum slogan radar',
    port: 26657,
    maxGas: 100000000,
    gasPrice: 0.002,
  );

  await sdk.db.tx
      .create_(
        null,
        MsgCreate(
          creator: sdk.db.address,
          uuid: uuid,
          key: 'myKey',
          value: utf8.encode('myValue'),
          lease: Lease(hours: 1),
        ),
      )
      .then((_) => print('\nCreated key: myKey, value: myValue in $uuid'));

  await sdk.db.q
      .read(
          null,
          QueryReadRequest(
            uuid: uuid,
            key: 'myKey',
          ))
      .then((resp) => utf8.decode(resp.value))
      .then((value) => print('\nRead myKey in $uuid: $value'));

  await sdk.db.tx
      .update(
        null,
        MsgUpdate(
          creator: sdk.db.address,
          uuid: uuid,
          key: 'myKey',
          value: utf8.encode('updatedValue'),
          lease: Lease(minutes: 1),
        ),
      )
      .then((_) => print(
          '\nUpdated key: myKey to value: updatedValue, for a 1 minute lease'));

  await sdk.db.q
      .read(
        null,
        QueryReadRequest(
          uuid: uuid,
          key: 'myKey',
        ),
      )
      .then((resp) => utf8.decode(resp.value))
      .then((value) => print('\nRead myKey after updating: $value'));

  await sdk.db.q
      .getLease(
        null,
        QueryGetLeaseRequest(
          uuid: uuid,
          key: 'myKey',
        ),
      )
      .then((resp) => resp.seconds)
      .then((seconds) => print('Remaining lease time (seconds): $seconds'))
      .then((_) => populateUuid(sdk))
      .then((_) => print('\nCreated 3 new key-values'));

  await sdk.db.q
      .keyValues(
        null,
        QueryKeyValuesRequest(uuid: uuid),
      )
      .then((resp) => resp.keyValues)
      .then(
          (keyValues) => print('\nReading all values in $uuid:\n $keyValues'));

  // TODO: diffCostForEqualSizeCreates()

  // TODO: diffCostForLeaseChange()

  await sdk.db.q
      .search(
        null,
        QuerySearchRequest(
          uuid: uuid,
          searchString: 's',
        ),
      )
      .then((resp) => resp.keyValues)
      .then((keyValues) => print(
          "\nKey-values with keys matching the search string 's': $keyValues"));

  await sdk.db.q
      .getNShortestLeases(
        null,
        QueryGetNShortestLeasesRequest(
          uuid: uuid,
          num: 5,
        ),
      )
      .then((value) => print('\nGetting the 5 shortest leases: $value'));

  await sdk.db.tx
      .renewLeasesAll(
        null,
        MsgRenewLeasesAll(
          creator: sdk.db.address,
          uuid: uuid,
          lease: Lease(seconds: 10),
        ),
      )
      .then((_) => print('\nRenewing all key-values to leases of 10 seconds'));

  await sdk.db.q
      .getNShortestLeases(
        null,
        QueryGetNShortestLeasesRequest(
          uuid: uuid,
          num: 6,
        ),
      )
      .then((value) => print('\nGetting 6 of the shortest leases: $value'));

  await Future.delayed(Duration(seconds: 10))
      .then((_) => print('\nWaiting 10 seconds for lease expiries'));

  await sdk.db.q
      .keyValues(
        null,
        QueryKeyValuesRequest(uuid: uuid),
      )
      .then((value) => print('Querying all key-values in uuid: $uuid: $value'));

  // TODO: close connections
}
