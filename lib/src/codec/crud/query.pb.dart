///
//  Generated code. Do not modify.
//  source: crud/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Paging.pb.dart' as $2;
import 'KeyValue.pb.dart' as $3;

class QueryFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  QueryFileRequest._() : super();
  factory QueryFileRequest({
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory QueryFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryFileRequest clone() => QueryFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryFileRequest copyWith(void Function(QueryFileRequest) updates) => super.copyWith((message) => updates(message as QueryFileRequest)) as QueryFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryFileRequest create() => QueryFileRequest._();
  QueryFileRequest createEmptyInstance() => create();
  static $pb.PbList<QueryFileRequest> createRepeated() => $pb.PbList<QueryFileRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryFileRequest>(create);
  static QueryFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class QueryFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryFileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  QueryFileResponse._() : super();
  factory QueryFileResponse({
    $core.List<$core.int>? data,
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory QueryFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryFileResponse clone() => QueryFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryFileResponse copyWith(void Function(QueryFileResponse) updates) => super.copyWith((message) => updates(message as QueryFileResponse)) as QueryFileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryFileResponse create() => QueryFileResponse._();
  QueryFileResponse createEmptyInstance() => create();
  static $pb.PbList<QueryFileResponse> createRepeated() => $pb.PbList<QueryFileResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryFileResponse>(create);
  static QueryFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
}

class QueryKeyValuesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryKeyValuesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOM<$2.PagingRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingRequest.create)
    ..hasRequiredFields = false
  ;

  QueryKeyValuesRequest._() : super();
  factory QueryKeyValuesRequest({
    $core.String? uuid,
    $2.PagingRequest? pagination,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryKeyValuesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryKeyValuesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryKeyValuesRequest clone() => QueryKeyValuesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryKeyValuesRequest copyWith(void Function(QueryKeyValuesRequest) updates) => super.copyWith((message) => updates(message as QueryKeyValuesRequest)) as QueryKeyValuesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryKeyValuesRequest create() => QueryKeyValuesRequest._();
  QueryKeyValuesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryKeyValuesRequest> createRepeated() => $pb.PbList<QueryKeyValuesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryKeyValuesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryKeyValuesRequest>(create);
  static QueryKeyValuesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $2.PagingRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($2.PagingRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $2.PagingRequest ensurePagination() => $_ensure(1);
}

class QueryKeyValuesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryKeyValuesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..pc<$3.KeyValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyValues', $pb.PbFieldType.PM, protoName: 'keyValues', subBuilder: $3.KeyValue.create)
    ..aOM<$2.PagingResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingResponse.create)
    ..hasRequiredFields = false
  ;

  QueryKeyValuesResponse._() : super();
  factory QueryKeyValuesResponse({
    $core.Iterable<$3.KeyValue>? keyValues,
    $2.PagingResponse? pagination,
  }) {
    final _result = create();
    if (keyValues != null) {
      _result.keyValues.addAll(keyValues);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryKeyValuesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryKeyValuesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryKeyValuesResponse clone() => QueryKeyValuesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryKeyValuesResponse copyWith(void Function(QueryKeyValuesResponse) updates) => super.copyWith((message) => updates(message as QueryKeyValuesResponse)) as QueryKeyValuesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryKeyValuesResponse create() => QueryKeyValuesResponse._();
  QueryKeyValuesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryKeyValuesResponse> createRepeated() => $pb.PbList<QueryKeyValuesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryKeyValuesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryKeyValuesResponse>(create);
  static QueryKeyValuesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.KeyValue> get keyValues => $_getList(0);

  @$pb.TagNumber(2)
  $2.PagingResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($2.PagingResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $2.PagingResponse ensurePagination() => $_ensure(1);
}

class QueryReadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryReadRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  QueryReadRequest._() : super();
  factory QueryReadRequest({
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory QueryReadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryReadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryReadRequest clone() => QueryReadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryReadRequest copyWith(void Function(QueryReadRequest) updates) => super.copyWith((message) => updates(message as QueryReadRequest)) as QueryReadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryReadRequest create() => QueryReadRequest._();
  QueryReadRequest createEmptyInstance() => create();
  static $pb.PbList<QueryReadRequest> createRepeated() => $pb.PbList<QueryReadRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryReadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryReadRequest>(create);
  static QueryReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class QueryReadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryReadResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QueryReadResponse._() : super();
  factory QueryReadResponse({
    $core.List<$core.int>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory QueryReadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryReadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryReadResponse clone() => QueryReadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryReadResponse copyWith(void Function(QueryReadResponse) updates) => super.copyWith((message) => updates(message as QueryReadResponse)) as QueryReadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryReadResponse create() => QueryReadResponse._();
  QueryReadResponse createEmptyInstance() => create();
  static $pb.PbList<QueryReadResponse> createRepeated() => $pb.PbList<QueryReadResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryReadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryReadResponse>(create);
  static QueryReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class QueryKeysRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryKeysRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOM<$2.PagingRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingRequest.create)
    ..hasRequiredFields = false
  ;

  QueryKeysRequest._() : super();
  factory QueryKeysRequest({
    $core.String? uuid,
    $2.PagingRequest? pagination,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryKeysRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryKeysRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryKeysRequest clone() => QueryKeysRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryKeysRequest copyWith(void Function(QueryKeysRequest) updates) => super.copyWith((message) => updates(message as QueryKeysRequest)) as QueryKeysRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryKeysRequest create() => QueryKeysRequest._();
  QueryKeysRequest createEmptyInstance() => create();
  static $pb.PbList<QueryKeysRequest> createRepeated() => $pb.PbList<QueryKeysRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryKeysRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryKeysRequest>(create);
  static QueryKeysRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $2.PagingRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($2.PagingRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $2.PagingRequest ensurePagination() => $_ensure(1);
}

class QueryKeysResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryKeysResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys')
    ..aOM<$2.PagingResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingResponse.create)
    ..hasRequiredFields = false
  ;

  QueryKeysResponse._() : super();
  factory QueryKeysResponse({
    $core.Iterable<$core.String>? keys,
    $2.PagingResponse? pagination,
  }) {
    final _result = create();
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryKeysResponse clone() => QueryKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryKeysResponse copyWith(void Function(QueryKeysResponse) updates) => super.copyWith((message) => updates(message as QueryKeysResponse)) as QueryKeysResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryKeysResponse create() => QueryKeysResponse._();
  QueryKeysResponse createEmptyInstance() => create();
  static $pb.PbList<QueryKeysResponse> createRepeated() => $pb.PbList<QueryKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryKeysResponse>(create);
  static QueryKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get keys => $_getList(0);

  @$pb.TagNumber(2)
  $2.PagingResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($2.PagingResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $2.PagingResponse ensurePagination() => $_ensure(1);
}

class QueryMyKeysRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryMyKeysRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOM<$2.PagingRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingRequest.create)
    ..hasRequiredFields = false
  ;

  QueryMyKeysRequest._() : super();
  factory QueryMyKeysRequest({
    $core.String? address,
    $core.String? uuid,
    $2.PagingRequest? pagination,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryMyKeysRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMyKeysRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMyKeysRequest clone() => QueryMyKeysRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMyKeysRequest copyWith(void Function(QueryMyKeysRequest) updates) => super.copyWith((message) => updates(message as QueryMyKeysRequest)) as QueryMyKeysRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMyKeysRequest create() => QueryMyKeysRequest._();
  QueryMyKeysRequest createEmptyInstance() => create();
  static $pb.PbList<QueryMyKeysRequest> createRepeated() => $pb.PbList<QueryMyKeysRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryMyKeysRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMyKeysRequest>(create);
  static QueryMyKeysRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $2.PagingRequest get pagination => $_getN(2);
  @$pb.TagNumber(3)
  set pagination($2.PagingRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPagination() => $_has(2);
  @$pb.TagNumber(3)
  void clearPagination() => clearField(3);
  @$pb.TagNumber(3)
  $2.PagingRequest ensurePagination() => $_ensure(2);
}

class QueryMyKeysResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryMyKeysResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys')
    ..aOM<$2.PagingResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingResponse.create)
    ..hasRequiredFields = false
  ;

  QueryMyKeysResponse._() : super();
  factory QueryMyKeysResponse({
    $core.Iterable<$core.String>? keys,
    $2.PagingResponse? pagination,
  }) {
    final _result = create();
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryMyKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMyKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMyKeysResponse clone() => QueryMyKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMyKeysResponse copyWith(void Function(QueryMyKeysResponse) updates) => super.copyWith((message) => updates(message as QueryMyKeysResponse)) as QueryMyKeysResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMyKeysResponse create() => QueryMyKeysResponse._();
  QueryMyKeysResponse createEmptyInstance() => create();
  static $pb.PbList<QueryMyKeysResponse> createRepeated() => $pb.PbList<QueryMyKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryMyKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMyKeysResponse>(create);
  static QueryMyKeysResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get keys => $_getList(0);

  @$pb.TagNumber(2)
  $2.PagingResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($2.PagingResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $2.PagingResponse ensurePagination() => $_ensure(1);
}

class QueryCountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  QueryCountRequest._() : super();
  factory QueryCountRequest({
    $core.String? uuid,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    return _result;
  }
  factory QueryCountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCountRequest clone() => QueryCountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCountRequest copyWith(void Function(QueryCountRequest) updates) => super.copyWith((message) => updates(message as QueryCountRequest)) as QueryCountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCountRequest create() => QueryCountRequest._();
  QueryCountRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCountRequest> createRepeated() => $pb.PbList<QueryCountRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCountRequest>(create);
  static QueryCountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class QueryCountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  QueryCountResponse._() : super();
  factory QueryCountResponse({
    $core.String? uuid,
    $core.int? count,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory QueryCountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCountResponse clone() => QueryCountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCountResponse copyWith(void Function(QueryCountResponse) updates) => super.copyWith((message) => updates(message as QueryCountResponse)) as QueryCountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCountResponse create() => QueryCountResponse._();
  QueryCountResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCountResponse> createRepeated() => $pb.PbList<QueryCountResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCountResponse>(create);
  static QueryCountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class QueryHasRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryHasRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  QueryHasRequest._() : super();
  factory QueryHasRequest({
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory QueryHasRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryHasRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryHasRequest clone() => QueryHasRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryHasRequest copyWith(void Function(QueryHasRequest) updates) => super.copyWith((message) => updates(message as QueryHasRequest)) as QueryHasRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryHasRequest create() => QueryHasRequest._();
  QueryHasRequest createEmptyInstance() => create();
  static $pb.PbList<QueryHasRequest> createRepeated() => $pb.PbList<QueryHasRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryHasRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryHasRequest>(create);
  static QueryHasRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class QueryHasResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryHasResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'has')
    ..hasRequiredFields = false
  ;

  QueryHasResponse._() : super();
  factory QueryHasResponse({
    $core.bool? has,
  }) {
    final _result = create();
    if (has != null) {
      _result.has = has;
    }
    return _result;
  }
  factory QueryHasResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryHasResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryHasResponse clone() => QueryHasResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryHasResponse copyWith(void Function(QueryHasResponse) updates) => super.copyWith((message) => updates(message as QueryHasResponse)) as QueryHasResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryHasResponse create() => QueryHasResponse._();
  QueryHasResponse createEmptyInstance() => create();
  static $pb.PbList<QueryHasResponse> createRepeated() => $pb.PbList<QueryHasResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryHasResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryHasResponse>(create);
  static QueryHasResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get has => $_getBF(0);
  @$pb.TagNumber(1)
  set has($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHas() => $_has(0);
  @$pb.TagNumber(1)
  void clearHas() => clearField(1);
}

class QuerySearchRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuerySearchRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchString', protoName: 'searchString')
    ..aOM<$2.PagingRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingRequest.create)
    ..hasRequiredFields = false
  ;

  QuerySearchRequest._() : super();
  factory QuerySearchRequest({
    $core.String? uuid,
    $core.String? searchString,
    $2.PagingRequest? pagination,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (searchString != null) {
      _result.searchString = searchString;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QuerySearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuerySearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuerySearchRequest clone() => QuerySearchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuerySearchRequest copyWith(void Function(QuerySearchRequest) updates) => super.copyWith((message) => updates(message as QuerySearchRequest)) as QuerySearchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuerySearchRequest create() => QuerySearchRequest._();
  QuerySearchRequest createEmptyInstance() => create();
  static $pb.PbList<QuerySearchRequest> createRepeated() => $pb.PbList<QuerySearchRequest>();
  @$core.pragma('dart2js:noInline')
  static QuerySearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuerySearchRequest>(create);
  static QuerySearchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get searchString => $_getSZ(1);
  @$pb.TagNumber(2)
  set searchString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchString() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchString() => clearField(2);

  @$pb.TagNumber(3)
  $2.PagingRequest get pagination => $_getN(2);
  @$pb.TagNumber(3)
  set pagination($2.PagingRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPagination() => $_has(2);
  @$pb.TagNumber(3)
  void clearPagination() => clearField(3);
  @$pb.TagNumber(3)
  $2.PagingRequest ensurePagination() => $_ensure(2);
}

class QuerySearchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuerySearchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..pc<$3.KeyValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyValues', $pb.PbFieldType.PM, protoName: 'keyValues', subBuilder: $3.KeyValue.create)
    ..aOM<$2.PagingResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingResponse.create)
    ..hasRequiredFields = false
  ;

  QuerySearchResponse._() : super();
  factory QuerySearchResponse({
    $core.Iterable<$3.KeyValue>? keyValues,
    $2.PagingResponse? pagination,
  }) {
    final _result = create();
    if (keyValues != null) {
      _result.keyValues.addAll(keyValues);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QuerySearchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuerySearchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuerySearchResponse clone() => QuerySearchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuerySearchResponse copyWith(void Function(QuerySearchResponse) updates) => super.copyWith((message) => updates(message as QuerySearchResponse)) as QuerySearchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuerySearchResponse create() => QuerySearchResponse._();
  QuerySearchResponse createEmptyInstance() => create();
  static $pb.PbList<QuerySearchResponse> createRepeated() => $pb.PbList<QuerySearchResponse>();
  @$core.pragma('dart2js:noInline')
  static QuerySearchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuerySearchResponse>(create);
  static QuerySearchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.KeyValue> get keyValues => $_getList(0);

  @$pb.TagNumber(2)
  $2.PagingResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($2.PagingResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $2.PagingResponse ensurePagination() => $_ensure(1);
}

class QueryGetLeaseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetLeaseRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  QueryGetLeaseRequest._() : super();
  factory QueryGetLeaseRequest({
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory QueryGetLeaseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetLeaseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetLeaseRequest clone() => QueryGetLeaseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetLeaseRequest copyWith(void Function(QueryGetLeaseRequest) updates) => super.copyWith((message) => updates(message as QueryGetLeaseRequest)) as QueryGetLeaseRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetLeaseRequest create() => QueryGetLeaseRequest._();
  QueryGetLeaseRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetLeaseRequest> createRepeated() => $pb.PbList<QueryGetLeaseRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetLeaseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetLeaseRequest>(create);
  static QueryGetLeaseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class QueryGetLeaseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetLeaseResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seconds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  QueryGetLeaseResponse._() : super();
  factory QueryGetLeaseResponse({
    $core.String? uuid,
    $core.String? key,
    $core.int? seconds,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    if (seconds != null) {
      _result.seconds = seconds;
    }
    return _result;
  }
  factory QueryGetLeaseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetLeaseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetLeaseResponse clone() => QueryGetLeaseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetLeaseResponse copyWith(void Function(QueryGetLeaseResponse) updates) => super.copyWith((message) => updates(message as QueryGetLeaseResponse)) as QueryGetLeaseResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetLeaseResponse create() => QueryGetLeaseResponse._();
  QueryGetLeaseResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetLeaseResponse> createRepeated() => $pb.PbList<QueryGetLeaseResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetLeaseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetLeaseResponse>(create);
  static QueryGetLeaseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get seconds => $_getIZ(2);
  @$pb.TagNumber(3)
  set seconds($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeconds() => clearField(3);
}

class QueryGetNShortestLeasesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetNShortestLeasesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  QueryGetNShortestLeasesRequest._() : super();
  factory QueryGetNShortestLeasesRequest({
    $core.String? uuid,
    $core.int? num,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (num != null) {
      _result.num = num;
    }
    return _result;
  }
  factory QueryGetNShortestLeasesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetNShortestLeasesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetNShortestLeasesRequest clone() => QueryGetNShortestLeasesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetNShortestLeasesRequest copyWith(void Function(QueryGetNShortestLeasesRequest) updates) => super.copyWith((message) => updates(message as QueryGetNShortestLeasesRequest)) as QueryGetNShortestLeasesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetNShortestLeasesRequest create() => QueryGetNShortestLeasesRequest._();
  QueryGetNShortestLeasesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetNShortestLeasesRequest> createRepeated() => $pb.PbList<QueryGetNShortestLeasesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetNShortestLeasesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetNShortestLeasesRequest>(create);
  static QueryGetNShortestLeasesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get num => $_getIZ(1);
  @$pb.TagNumber(2)
  set num($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNum() => clearField(2);
}

class QueryGetNShortestLeasesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetNShortestLeasesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..pc<$3.KeyLease>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyLeases', $pb.PbFieldType.PM, protoName: 'keyLeases', subBuilder: $3.KeyLease.create)
    ..hasRequiredFields = false
  ;

  QueryGetNShortestLeasesResponse._() : super();
  factory QueryGetNShortestLeasesResponse({
    $core.String? uuid,
    $core.Iterable<$3.KeyLease>? keyLeases,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (keyLeases != null) {
      _result.keyLeases.addAll(keyLeases);
    }
    return _result;
  }
  factory QueryGetNShortestLeasesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetNShortestLeasesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetNShortestLeasesResponse clone() => QueryGetNShortestLeasesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetNShortestLeasesResponse copyWith(void Function(QueryGetNShortestLeasesResponse) updates) => super.copyWith((message) => updates(message as QueryGetNShortestLeasesResponse)) as QueryGetNShortestLeasesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetNShortestLeasesResponse create() => QueryGetNShortestLeasesResponse._();
  QueryGetNShortestLeasesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetNShortestLeasesResponse> createRepeated() => $pb.PbList<QueryGetNShortestLeasesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetNShortestLeasesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetNShortestLeasesResponse>(create);
  static QueryGetNShortestLeasesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$3.KeyLease> get keyLeases => $_getList(1);
}

class QueryApi {
  $pb.RpcClient _client;
  QueryApi(this._client);

  $async.Future<QueryReadResponse> read($pb.ClientContext? ctx, QueryReadRequest request) {
    var emptyResponse = QueryReadResponse();
    return _client.invoke<QueryReadResponse>(ctx, 'Query', 'Read', request, emptyResponse);
  }
  $async.Future<QueryKeysResponse> keys($pb.ClientContext? ctx, QueryKeysRequest request) {
    var emptyResponse = QueryKeysResponse();
    return _client.invoke<QueryKeysResponse>(ctx, 'Query', 'Keys', request, emptyResponse);
  }
  $async.Future<QueryMyKeysResponse> myKeys($pb.ClientContext? ctx, QueryMyKeysRequest request) {
    var emptyResponse = QueryMyKeysResponse();
    return _client.invoke<QueryMyKeysResponse>(ctx, 'Query', 'MyKeys', request, emptyResponse);
  }
  $async.Future<QueryCountResponse> count($pb.ClientContext? ctx, QueryCountRequest request) {
    var emptyResponse = QueryCountResponse();
    return _client.invoke<QueryCountResponse>(ctx, 'Query', 'Count', request, emptyResponse);
  }
  $async.Future<QueryHasResponse> has($pb.ClientContext? ctx, QueryHasRequest request) {
    var emptyResponse = QueryHasResponse();
    return _client.invoke<QueryHasResponse>(ctx, 'Query', 'Has', request, emptyResponse);
  }
  $async.Future<QuerySearchResponse> search($pb.ClientContext? ctx, QuerySearchRequest request) {
    var emptyResponse = QuerySearchResponse();
    return _client.invoke<QuerySearchResponse>(ctx, 'Query', 'Search', request, emptyResponse);
  }
  $async.Future<QueryGetNShortestLeasesResponse> getNShortestLeases($pb.ClientContext? ctx, QueryGetNShortestLeasesRequest request) {
    var emptyResponse = QueryGetNShortestLeasesResponse();
    return _client.invoke<QueryGetNShortestLeasesResponse>(ctx, 'Query', 'GetNShortestLeases', request, emptyResponse);
  }
  $async.Future<QueryGetLeaseResponse> getLease($pb.ClientContext? ctx, QueryGetLeaseRequest request) {
    var emptyResponse = QueryGetLeaseResponse();
    return _client.invoke<QueryGetLeaseResponse>(ctx, 'Query', 'GetLease', request, emptyResponse);
  }
  $async.Future<QueryKeyValuesResponse> keyValues($pb.ClientContext? ctx, QueryKeyValuesRequest request) {
    var emptyResponse = QueryKeyValuesResponse();
    return _client.invoke<QueryKeyValuesResponse>(ctx, 'Query', 'KeyValues', request, emptyResponse);
  }
  $async.Future<QueryFileResponse> file($pb.ClientContext? ctx, QueryFileRequest request) {
    var emptyResponse = QueryFileResponse();
    return _client.invoke<QueryFileResponse>(ctx, 'Query', 'File', request, emptyResponse);
  }
}

