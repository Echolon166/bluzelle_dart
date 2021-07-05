// Mocks generated by Mockito 5.0.10 from annotations
// in bluzelle_dart/test/tendermint_rpc/tendermint34_client_test.dart.
// Do not manually edit this file.

// Dart imports:
import 'dart:async' as _i5;
import 'dart:typed_data' as _i7;

// Package imports:
import 'package:fixnum/fixnum.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:protobuf/protobuf.dart' as _i6;

// Project imports:
import 'package:bluzelle_dart/src/codec/tendermint/abci/types.pb.dart' as _i2;

import 'package:bluzelle_dart/src/tendermint_rpc/responses/responses.dart'
    as _i3;
import 'package:bluzelle_dart/src/tendermint_rpc/tendermint34_client.dart'
    as _i4;

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

/// A class which mocks [Tendermint34Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockTendermint34Client extends _i1.Mock
    implements _i4.Tendermint34Client {
  MockTendermint34Client() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
  @override
  _i5.Future<T> invoke<T extends _i6.GeneratedMessage>(
          _i6.ClientContext? ctx,
          String? serviceName,
          String? methodName,
          _i6.GeneratedMessage? request,
          T? emptyResponse) =>
      (super.noSuchMethod(
          Invocation.method(
              #invoke, [ctx, serviceName, methodName, request, emptyResponse]),
          returnValue: Future<T>.value(null)) as _i5.Future<T>);
  @override
  _i5.Future<_i2.ResponseInfo> abciInfo() =>
      (super.noSuchMethod(Invocation.method(#abciInfo, []),
              returnValue: Future<_i2.ResponseInfo>.value(_FakeResponseInfo()))
          as _i5.Future<_i2.ResponseInfo>);
  @override
  _i5.Future<_i2.ResponseQuery> abciQuery(
          {String? path,
          _i7.Uint8List? data,
          _i8.Int64? height,
          bool? prove}) =>
      (super.noSuchMethod(
              Invocation.method(#abciQuery, [],
                  {#path: path, #data: data, #height: height, #prove: prove}),
              returnValue:
                  Future<_i2.ResponseQuery>.value(_FakeResponseQuery()))
          as _i5.Future<_i2.ResponseQuery>);
  @override
  _i5.Future<_i3.StatusResponse> status() => (super.noSuchMethod(
          Invocation.method(#status, []),
          returnValue: Future<_i3.StatusResponse>.value(_FakeStatusResponse()))
      as _i5.Future<_i3.StatusResponse>);
  @override
  _i5.Future<_i3.BroadcastTxSyncResponse> broadcastTxSync(_i7.Uint8List? tx) =>
      (super.noSuchMethod(Invocation.method(#broadcastTxSync, [tx]),
              returnValue: Future<_i3.BroadcastTxSyncResponse>.value(
                  _FakeBroadcastTxSyncResponse()))
          as _i5.Future<_i3.BroadcastTxSyncResponse>);
}
