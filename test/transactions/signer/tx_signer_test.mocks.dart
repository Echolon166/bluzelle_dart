// Mocks generated by Mockito 5.0.10 from annotations
// in bluzelle_dart/test/transactions/signer/tx_signer_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:typed_data' as _i8;

import 'package:bluzelle_dart/src/codec/tendermint/abci/types.pb.dart' as _i2;
import 'package:bluzelle_dart/src/tendermint_rpc/responses/responses.dart'
    as _i3;
import 'package:bluzelle_dart/src/tendermint_rpc/tendermint34_client.dart'
    as _i5;
import 'package:bluzelle_dart/src/wallet/network_info.dart' as _i4;
import 'package:fixnum/fixnum.dart' as _i9;
import 'package:mockito/mockito.dart' as _i1;
import 'package:protobuf/protobuf.dart' as _i7;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeResponseInfo extends _i1.Fake implements _i2.ResponseInfo {}

class _FakeResponseQuery extends _i1.Fake implements _i2.ResponseQuery {}

class _FakeStatusResponse extends _i1.Fake implements _i3.StatusResponse {
  @override
  String toString() => super.toString();
}

class _FakeBroadcastTxSyncResponse extends _i1.Fake
    implements _i3.BroadcastTxSyncResponse {
  @override
  String toString() => super.toString();
}

class _FakeTendermintRpcInfo extends _i1.Fake implements _i4.TendermintRpcInfo {
  @override
  String toString() => super.toString();
}

class _FakeTendermint34Client extends _i1.Fake
    implements _i5.Tendermint34Client {}

/// A class which mocks [Tendermint34Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockTendermint34Client extends _i1.Mock
    implements _i5.Tendermint34Client {
  MockTendermint34Client() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
  @override
  _i6.Future<T> invoke<T extends _i7.GeneratedMessage>(
          _i7.ClientContext? ctx,
          String? serviceName,
          String? methodName,
          _i7.GeneratedMessage? request,
          T? emptyResponse) =>
      (super.noSuchMethod(
          Invocation.method(
              #invoke, [ctx, serviceName, methodName, request, emptyResponse]),
          returnValue: Future<T>.value(null)) as _i6.Future<T>);
  @override
  _i6.Future<_i2.ResponseInfo> abciInfo() =>
      (super.noSuchMethod(Invocation.method(#abciInfo, []),
              returnValue: Future<_i2.ResponseInfo>.value(_FakeResponseInfo()))
          as _i6.Future<_i2.ResponseInfo>);
  @override
  _i6.Future<_i2.ResponseQuery> abciQuery(
          {String? path,
          _i8.Uint8List? data,
          _i9.Int64? height,
          bool? prove}) =>
      (super.noSuchMethod(
              Invocation.method(#abciQuery, [],
                  {#path: path, #data: data, #height: height, #prove: prove}),
              returnValue:
                  Future<_i2.ResponseQuery>.value(_FakeResponseQuery()))
          as _i6.Future<_i2.ResponseQuery>);
  @override
  _i6.Future<_i3.StatusResponse> status() => (super.noSuchMethod(
          Invocation.method(#status, []),
          returnValue: Future<_i3.StatusResponse>.value(_FakeStatusResponse()))
      as _i6.Future<_i3.StatusResponse>);
  @override
  _i6.Future<_i3.BroadcastTxSyncResponse> broadcastTxSync(_i8.Uint8List? tx) =>
      (super.noSuchMethod(Invocation.method(#broadcastTxSync, [tx]),
              returnValue: Future<_i3.BroadcastTxSyncResponse>.value(
                  _FakeBroadcastTxSyncResponse()))
          as _i6.Future<_i3.BroadcastTxSyncResponse>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i4.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get bech32Hrp =>
      (super.noSuchMethod(Invocation.getter(#bech32Hrp), returnValue: '')
          as String);
  @override
  _i4.TendermintRpcInfo get tendermintRpcInfo =>
      (super.noSuchMethod(Invocation.getter(#tendermintRpcInfo),
          returnValue: _FakeTendermintRpcInfo()) as _i4.TendermintRpcInfo);
  @override
  _i5.Tendermint34Client get tendermint34Client =>
      (super.noSuchMethod(Invocation.getter(#tendermint34Client),
          returnValue: _FakeTendermint34Client()) as _i5.Tendermint34Client);
  @override
  String get url =>
      (super.noSuchMethod(Invocation.getter(#url), returnValue: '') as String);
  @override
  List<Object?> get props =>
      (super.noSuchMethod(Invocation.getter(#props), returnValue: <Object?>[])
          as List<Object?>);
  @override
  Map<String, dynamic> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
  @override
  String toString() => super.toString();
}
