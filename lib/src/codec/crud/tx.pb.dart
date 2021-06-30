///
//  Generated code. Do not modify.
//  source: crud/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'lease.pb.dart' as $0;
import 'KeyValue.pb.dart' as $3;
import 'Paging.pb.dart' as $2;

class MsgCount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  MsgCount._() : super();
  factory MsgCount({
    $core.String? creator,
    $core.String? uuid,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    return _result;
  }
  factory MsgCount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCount clone() => MsgCount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCount copyWith(void Function(MsgCount) updates) => super.copyWith((message) => updates(message as MsgCount)) as MsgCount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCount create() => MsgCount._();
  MsgCount createEmptyInstance() => create();
  static $pb.PbList<MsgCount> createRepeated() => $pb.PbList<MsgCount>();
  @$core.pragma('dart2js:noInline')
  static MsgCount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCount>(create);
  static MsgCount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);
}

class MsgCountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MsgCountResponse._() : super();
  factory MsgCountResponse({
    $core.int? count,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory MsgCountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCountResponse clone() => MsgCountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCountResponse copyWith(void Function(MsgCountResponse) updates) => super.copyWith((message) => updates(message as MsgCountResponse)) as MsgCountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCountResponse create() => MsgCountResponse._();
  MsgCountResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCountResponse> createRepeated() => $pb.PbList<MsgCountResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCountResponse>(create);
  static MsgCountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

class MsgRenewLeasesAll extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRenewLeasesAll', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOM<$0.Lease>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease', subBuilder: $0.Lease.create)
    ..hasRequiredFields = false
  ;

  MsgRenewLeasesAll._() : super();
  factory MsgRenewLeasesAll({
    $core.String? creator,
    $core.String? uuid,
    $0.Lease? lease,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    return _result;
  }
  factory MsgRenewLeasesAll.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRenewLeasesAll.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRenewLeasesAll clone() => MsgRenewLeasesAll()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRenewLeasesAll copyWith(void Function(MsgRenewLeasesAll) updates) => super.copyWith((message) => updates(message as MsgRenewLeasesAll)) as MsgRenewLeasesAll; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRenewLeasesAll create() => MsgRenewLeasesAll._();
  MsgRenewLeasesAll createEmptyInstance() => create();
  static $pb.PbList<MsgRenewLeasesAll> createRepeated() => $pb.PbList<MsgRenewLeasesAll>();
  @$core.pragma('dart2js:noInline')
  static MsgRenewLeasesAll getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRenewLeasesAll>(create);
  static MsgRenewLeasesAll? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $0.Lease get lease => $_getN(2);
  @$pb.TagNumber(3)
  set lease($0.Lease v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLease() => $_has(2);
  @$pb.TagNumber(3)
  void clearLease() => clearField(3);
  @$pb.TagNumber(3)
  $0.Lease ensureLease() => $_ensure(2);
}

class MsgRenewLeasesAllResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRenewLeasesAllResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgRenewLeasesAllResponse._() : super();
  factory MsgRenewLeasesAllResponse() => create();
  factory MsgRenewLeasesAllResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRenewLeasesAllResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRenewLeasesAllResponse clone() => MsgRenewLeasesAllResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRenewLeasesAllResponse copyWith(void Function(MsgRenewLeasesAllResponse) updates) => super.copyWith((message) => updates(message as MsgRenewLeasesAllResponse)) as MsgRenewLeasesAllResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRenewLeasesAllResponse create() => MsgRenewLeasesAllResponse._();
  MsgRenewLeasesAllResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRenewLeasesAllResponse> createRepeated() => $pb.PbList<MsgRenewLeasesAllResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRenewLeasesAllResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRenewLeasesAllResponse>(create);
  static MsgRenewLeasesAllResponse? _defaultInstance;
}

class MsgRenewLease extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRenewLease', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOM<$0.Lease>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease', subBuilder: $0.Lease.create)
    ..hasRequiredFields = false
  ;

  MsgRenewLease._() : super();
  factory MsgRenewLease({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
    $0.Lease? lease,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    return _result;
  }
  factory MsgRenewLease.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRenewLease.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRenewLease clone() => MsgRenewLease()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRenewLease copyWith(void Function(MsgRenewLease) updates) => super.copyWith((message) => updates(message as MsgRenewLease)) as MsgRenewLease; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRenewLease create() => MsgRenewLease._();
  MsgRenewLease createEmptyInstance() => create();
  static $pb.PbList<MsgRenewLease> createRepeated() => $pb.PbList<MsgRenewLease>();
  @$core.pragma('dart2js:noInline')
  static MsgRenewLease getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRenewLease>(create);
  static MsgRenewLease? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

  @$pb.TagNumber(4)
  $0.Lease get lease => $_getN(3);
  @$pb.TagNumber(4)
  set lease($0.Lease v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLease() => $_has(3);
  @$pb.TagNumber(4)
  void clearLease() => clearField(4);
  @$pb.TagNumber(4)
  $0.Lease ensureLease() => $_ensure(3);
}

class MsgRenewLeaseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRenewLeaseResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgRenewLeaseResponse._() : super();
  factory MsgRenewLeaseResponse() => create();
  factory MsgRenewLeaseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRenewLeaseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRenewLeaseResponse clone() => MsgRenewLeaseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRenewLeaseResponse copyWith(void Function(MsgRenewLeaseResponse) updates) => super.copyWith((message) => updates(message as MsgRenewLeaseResponse)) as MsgRenewLeaseResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRenewLeaseResponse create() => MsgRenewLeaseResponse._();
  MsgRenewLeaseResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRenewLeaseResponse> createRepeated() => $pb.PbList<MsgRenewLeaseResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRenewLeaseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRenewLeaseResponse>(create);
  static MsgRenewLeaseResponse? _defaultInstance;
}

class MsgGetNShortestLeases extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgGetNShortestLeases', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MsgGetNShortestLeases._() : super();
  factory MsgGetNShortestLeases({
    $core.String? creator,
    $core.String? uuid,
    $core.int? num,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (num != null) {
      _result.num = num;
    }
    return _result;
  }
  factory MsgGetNShortestLeases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgGetNShortestLeases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgGetNShortestLeases clone() => MsgGetNShortestLeases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgGetNShortestLeases copyWith(void Function(MsgGetNShortestLeases) updates) => super.copyWith((message) => updates(message as MsgGetNShortestLeases)) as MsgGetNShortestLeases; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgGetNShortestLeases create() => MsgGetNShortestLeases._();
  MsgGetNShortestLeases createEmptyInstance() => create();
  static $pb.PbList<MsgGetNShortestLeases> createRepeated() => $pb.PbList<MsgGetNShortestLeases>();
  @$core.pragma('dart2js:noInline')
  static MsgGetNShortestLeases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgGetNShortestLeases>(create);
  static MsgGetNShortestLeases? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get num => $_getIZ(2);
  @$pb.TagNumber(3)
  set num($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearNum() => clearField(3);
}

class MsgGetNShortestLeasesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgGetNShortestLeasesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..pc<$3.KeyLease>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyLeases', $pb.PbFieldType.PM, protoName: 'keyLeases', subBuilder: $3.KeyLease.create)
    ..hasRequiredFields = false
  ;

  MsgGetNShortestLeasesResponse._() : super();
  factory MsgGetNShortestLeasesResponse({
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
  factory MsgGetNShortestLeasesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgGetNShortestLeasesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgGetNShortestLeasesResponse clone() => MsgGetNShortestLeasesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgGetNShortestLeasesResponse copyWith(void Function(MsgGetNShortestLeasesResponse) updates) => super.copyWith((message) => updates(message as MsgGetNShortestLeasesResponse)) as MsgGetNShortestLeasesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgGetNShortestLeasesResponse create() => MsgGetNShortestLeasesResponse._();
  MsgGetNShortestLeasesResponse createEmptyInstance() => create();
  static $pb.PbList<MsgGetNShortestLeasesResponse> createRepeated() => $pb.PbList<MsgGetNShortestLeasesResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgGetNShortestLeasesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgGetNShortestLeasesResponse>(create);
  static MsgGetNShortestLeasesResponse? _defaultInstance;

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

class MsgKeys extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgKeys', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOM<$2.PagingRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingRequest.create)
    ..hasRequiredFields = false
  ;

  MsgKeys._() : super();
  factory MsgKeys({
    $core.String? creator,
    $core.String? uuid,
    $2.PagingRequest? pagination,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory MsgKeys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgKeys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgKeys clone() => MsgKeys()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgKeys copyWith(void Function(MsgKeys) updates) => super.copyWith((message) => updates(message as MsgKeys)) as MsgKeys; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgKeys create() => MsgKeys._();
  MsgKeys createEmptyInstance() => create();
  static $pb.PbList<MsgKeys> createRepeated() => $pb.PbList<MsgKeys>();
  @$core.pragma('dart2js:noInline')
  static MsgKeys getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgKeys>(create);
  static MsgKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

class MsgKeysResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgKeysResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys')
    ..aOM<$2.PagingResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingResponse.create)
    ..hasRequiredFields = false
  ;

  MsgKeysResponse._() : super();
  factory MsgKeysResponse({
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
  factory MsgKeysResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgKeysResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgKeysResponse clone() => MsgKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgKeysResponse copyWith(void Function(MsgKeysResponse) updates) => super.copyWith((message) => updates(message as MsgKeysResponse)) as MsgKeysResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgKeysResponse create() => MsgKeysResponse._();
  MsgKeysResponse createEmptyInstance() => create();
  static $pb.PbList<MsgKeysResponse> createRepeated() => $pb.PbList<MsgKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgKeysResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgKeysResponse>(create);
  static MsgKeysResponse? _defaultInstance;

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

class MsgRename extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRename', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newKey', protoName: 'newKey')
    ..hasRequiredFields = false
  ;

  MsgRename._() : super();
  factory MsgRename({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
    $core.String? newKey,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    if (newKey != null) {
      _result.newKey = newKey;
    }
    return _result;
  }
  factory MsgRename.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRename.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRename clone() => MsgRename()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRename copyWith(void Function(MsgRename) updates) => super.copyWith((message) => updates(message as MsgRename)) as MsgRename; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRename create() => MsgRename._();
  MsgRename createEmptyInstance() => create();
  static $pb.PbList<MsgRename> createRepeated() => $pb.PbList<MsgRename>();
  @$core.pragma('dart2js:noInline')
  static MsgRename getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRename>(create);
  static MsgRename? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

  @$pb.TagNumber(4)
  $core.String get newKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set newKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNewKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewKey() => clearField(4);
}

class MsgRenameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRenameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgRenameResponse._() : super();
  factory MsgRenameResponse() => create();
  factory MsgRenameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRenameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRenameResponse clone() => MsgRenameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRenameResponse copyWith(void Function(MsgRenameResponse) updates) => super.copyWith((message) => updates(message as MsgRenameResponse)) as MsgRenameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRenameResponse create() => MsgRenameResponse._();
  MsgRenameResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRenameResponse> createRepeated() => $pb.PbList<MsgRenameResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRenameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRenameResponse>(create);
  static MsgRenameResponse? _defaultInstance;
}

class MsgMultiUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgMultiUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..pc<$3.KeyValueLease>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyValues', $pb.PbFieldType.PM, protoName: 'keyValues', subBuilder: $3.KeyValueLease.create)
    ..hasRequiredFields = false
  ;

  MsgMultiUpdate._() : super();
  factory MsgMultiUpdate({
    $core.String? creator,
    $core.String? uuid,
    $core.Iterable<$3.KeyValueLease>? keyValues,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (keyValues != null) {
      _result.keyValues.addAll(keyValues);
    }
    return _result;
  }
  factory MsgMultiUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgMultiUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgMultiUpdate clone() => MsgMultiUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgMultiUpdate copyWith(void Function(MsgMultiUpdate) updates) => super.copyWith((message) => updates(message as MsgMultiUpdate)) as MsgMultiUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgMultiUpdate create() => MsgMultiUpdate._();
  MsgMultiUpdate createEmptyInstance() => create();
  static $pb.PbList<MsgMultiUpdate> createRepeated() => $pb.PbList<MsgMultiUpdate>();
  @$core.pragma('dart2js:noInline')
  static MsgMultiUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgMultiUpdate>(create);
  static MsgMultiUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$3.KeyValueLease> get keyValues => $_getList(2);
}

class MsgMultiUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgMultiUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgMultiUpdateResponse._() : super();
  factory MsgMultiUpdateResponse() => create();
  factory MsgMultiUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgMultiUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgMultiUpdateResponse clone() => MsgMultiUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgMultiUpdateResponse copyWith(void Function(MsgMultiUpdateResponse) updates) => super.copyWith((message) => updates(message as MsgMultiUpdateResponse)) as MsgMultiUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgMultiUpdateResponse create() => MsgMultiUpdateResponse._();
  MsgMultiUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<MsgMultiUpdateResponse> createRepeated() => $pb.PbList<MsgMultiUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgMultiUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgMultiUpdateResponse>(create);
  static MsgMultiUpdateResponse? _defaultInstance;
}

class MsgDeleteAll extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDeleteAll', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  MsgDeleteAll._() : super();
  factory MsgDeleteAll({
    $core.String? creator,
    $core.String? uuid,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    return _result;
  }
  factory MsgDeleteAll.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteAll.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteAll clone() => MsgDeleteAll()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteAll copyWith(void Function(MsgDeleteAll) updates) => super.copyWith((message) => updates(message as MsgDeleteAll)) as MsgDeleteAll; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDeleteAll create() => MsgDeleteAll._();
  MsgDeleteAll createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteAll> createRepeated() => $pb.PbList<MsgDeleteAll>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteAll getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteAll>(create);
  static MsgDeleteAll? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);
}

class MsgDeleteAllResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDeleteAllResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgDeleteAllResponse._() : super();
  factory MsgDeleteAllResponse() => create();
  factory MsgDeleteAllResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteAllResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteAllResponse clone() => MsgDeleteAllResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteAllResponse copyWith(void Function(MsgDeleteAllResponse) updates) => super.copyWith((message) => updates(message as MsgDeleteAllResponse)) as MsgDeleteAllResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDeleteAllResponse create() => MsgDeleteAllResponse._();
  MsgDeleteAllResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteAllResponse> createRepeated() => $pb.PbList<MsgDeleteAllResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteAllResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteAllResponse>(create);
  static MsgDeleteAllResponse? _defaultInstance;
}

class MsgKeyValues extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgKeyValues', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOM<$2.PagingRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingRequest.create)
    ..hasRequiredFields = false
  ;

  MsgKeyValues._() : super();
  factory MsgKeyValues({
    $core.String? creator,
    $core.String? uuid,
    $2.PagingRequest? pagination,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory MsgKeyValues.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgKeyValues.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgKeyValues clone() => MsgKeyValues()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgKeyValues copyWith(void Function(MsgKeyValues) updates) => super.copyWith((message) => updates(message as MsgKeyValues)) as MsgKeyValues; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgKeyValues create() => MsgKeyValues._();
  MsgKeyValues createEmptyInstance() => create();
  static $pb.PbList<MsgKeyValues> createRepeated() => $pb.PbList<MsgKeyValues>();
  @$core.pragma('dart2js:noInline')
  static MsgKeyValues getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgKeyValues>(create);
  static MsgKeyValues? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

class MsgKeyValuesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgKeyValuesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..pc<$3.KeyValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyValues', $pb.PbFieldType.PM, protoName: 'keyValues', subBuilder: $3.KeyValue.create)
    ..aOM<$2.PagingResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $2.PagingResponse.create)
    ..hasRequiredFields = false
  ;

  MsgKeyValuesResponse._() : super();
  factory MsgKeyValuesResponse({
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
  factory MsgKeyValuesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgKeyValuesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgKeyValuesResponse clone() => MsgKeyValuesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgKeyValuesResponse copyWith(void Function(MsgKeyValuesResponse) updates) => super.copyWith((message) => updates(message as MsgKeyValuesResponse)) as MsgKeyValuesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgKeyValuesResponse create() => MsgKeyValuesResponse._();
  MsgKeyValuesResponse createEmptyInstance() => create();
  static $pb.PbList<MsgKeyValuesResponse> createRepeated() => $pb.PbList<MsgKeyValuesResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgKeyValuesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgKeyValuesResponse>(create);
  static MsgKeyValuesResponse? _defaultInstance;

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

class MsgHas extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgHas', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  MsgHas._() : super();
  factory MsgHas({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory MsgHas.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgHas.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgHas clone() => MsgHas()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgHas copyWith(void Function(MsgHas) updates) => super.copyWith((message) => updates(message as MsgHas)) as MsgHas; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgHas create() => MsgHas._();
  MsgHas createEmptyInstance() => create();
  static $pb.PbList<MsgHas> createRepeated() => $pb.PbList<MsgHas>();
  @$core.pragma('dart2js:noInline')
  static MsgHas getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgHas>(create);
  static MsgHas? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

class MsgHasResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgHasResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'has')
    ..hasRequiredFields = false
  ;

  MsgHasResponse._() : super();
  factory MsgHasResponse({
    $core.bool? has,
  }) {
    final _result = create();
    if (has != null) {
      _result.has = has;
    }
    return _result;
  }
  factory MsgHasResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgHasResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgHasResponse clone() => MsgHasResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgHasResponse copyWith(void Function(MsgHasResponse) updates) => super.copyWith((message) => updates(message as MsgHasResponse)) as MsgHasResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgHasResponse create() => MsgHasResponse._();
  MsgHasResponse createEmptyInstance() => create();
  static $pb.PbList<MsgHasResponse> createRepeated() => $pb.PbList<MsgHasResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgHasResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgHasResponse>(create);
  static MsgHasResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get has => $_getBF(0);
  @$pb.TagNumber(1)
  set has($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHas() => $_has(0);
  @$pb.TagNumber(1)
  void clearHas() => clearField(1);
}

class MsgGetLease extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgGetLease', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  MsgGetLease._() : super();
  factory MsgGetLease({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory MsgGetLease.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgGetLease.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgGetLease clone() => MsgGetLease()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgGetLease copyWith(void Function(MsgGetLease) updates) => super.copyWith((message) => updates(message as MsgGetLease)) as MsgGetLease; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgGetLease create() => MsgGetLease._();
  MsgGetLease createEmptyInstance() => create();
  static $pb.PbList<MsgGetLease> createRepeated() => $pb.PbList<MsgGetLease>();
  @$core.pragma('dart2js:noInline')
  static MsgGetLease getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgGetLease>(create);
  static MsgGetLease? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

class MsgGetLeaseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgGetLeaseResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seconds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MsgGetLeaseResponse._() : super();
  factory MsgGetLeaseResponse({
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
  factory MsgGetLeaseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgGetLeaseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgGetLeaseResponse clone() => MsgGetLeaseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgGetLeaseResponse copyWith(void Function(MsgGetLeaseResponse) updates) => super.copyWith((message) => updates(message as MsgGetLeaseResponse)) as MsgGetLeaseResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgGetLeaseResponse create() => MsgGetLeaseResponse._();
  MsgGetLeaseResponse createEmptyInstance() => create();
  static $pb.PbList<MsgGetLeaseResponse> createRepeated() => $pb.PbList<MsgGetLeaseResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgGetLeaseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgGetLeaseResponse>(create);
  static MsgGetLeaseResponse? _defaultInstance;

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

class MsgRead extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRead', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  MsgRead._() : super();
  factory MsgRead({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory MsgRead.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRead.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRead clone() => MsgRead()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRead copyWith(void Function(MsgRead) updates) => super.copyWith((message) => updates(message as MsgRead)) as MsgRead; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRead create() => MsgRead._();
  MsgRead createEmptyInstance() => create();
  static $pb.PbList<MsgRead> createRepeated() => $pb.PbList<MsgRead>();
  @$core.pragma('dart2js:noInline')
  static MsgRead getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRead>(create);
  static MsgRead? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

class MsgReadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgReadResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  MsgReadResponse._() : super();
  factory MsgReadResponse({
    $core.List<$core.int>? value,
    $core.String? key,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory MsgReadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgReadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgReadResponse clone() => MsgReadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgReadResponse copyWith(void Function(MsgReadResponse) updates) => super.copyWith((message) => updates(message as MsgReadResponse)) as MsgReadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgReadResponse create() => MsgReadResponse._();
  MsgReadResponse createEmptyInstance() => create();
  static $pb.PbList<MsgReadResponse> createRepeated() => $pb.PbList<MsgReadResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgReadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgReadResponse>(create);
  static MsgReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class MsgUpsert extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpsert', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aOM<$0.Lease>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease', subBuilder: $0.Lease.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgUpsert._() : super();
  factory MsgUpsert({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
    $core.List<$core.int>? value,
    $0.Lease? lease,
    $core.List<$core.int>? metadata,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory MsgUpsert.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpsert.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpsert clone() => MsgUpsert()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpsert copyWith(void Function(MsgUpsert) updates) => super.copyWith((message) => updates(message as MsgUpsert)) as MsgUpsert; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpsert create() => MsgUpsert._();
  MsgUpsert createEmptyInstance() => create();
  static $pb.PbList<MsgUpsert> createRepeated() => $pb.PbList<MsgUpsert>();
  @$core.pragma('dart2js:noInline')
  static MsgUpsert getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpsert>(create);
  static MsgUpsert? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

  @$pb.TagNumber(4)
  $core.List<$core.int> get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);

  @$pb.TagNumber(5)
  $0.Lease get lease => $_getN(4);
  @$pb.TagNumber(5)
  set lease($0.Lease v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLease() => $_has(4);
  @$pb.TagNumber(5)
  void clearLease() => clearField(5);
  @$pb.TagNumber(5)
  $0.Lease ensureLease() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => clearField(6);
}

class MsgUpsertResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpsertResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgUpsertResponse._() : super();
  factory MsgUpsertResponse() => create();
  factory MsgUpsertResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpsertResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpsertResponse clone() => MsgUpsertResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpsertResponse copyWith(void Function(MsgUpsertResponse) updates) => super.copyWith((message) => updates(message as MsgUpsertResponse)) as MsgUpsertResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpsertResponse create() => MsgUpsertResponse._();
  MsgUpsertResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpsertResponse> createRepeated() => $pb.PbList<MsgUpsertResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpsertResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpsertResponse>(create);
  static MsgUpsertResponse? _defaultInstance;
}

class MsgCreate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aOM<$0.Lease>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease', subBuilder: $0.Lease.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgCreate._() : super();
  factory MsgCreate({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
    $core.List<$core.int>? value,
    $0.Lease? lease,
    $core.List<$core.int>? metadata,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory MsgCreate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreate clone() => MsgCreate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreate copyWith(void Function(MsgCreate) updates) => super.copyWith((message) => updates(message as MsgCreate)) as MsgCreate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreate create() => MsgCreate._();
  MsgCreate createEmptyInstance() => create();
  static $pb.PbList<MsgCreate> createRepeated() => $pb.PbList<MsgCreate>();
  @$core.pragma('dart2js:noInline')
  static MsgCreate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreate>(create);
  static MsgCreate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

  @$pb.TagNumber(4)
  $core.List<$core.int> get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);

  @$pb.TagNumber(5)
  $0.Lease get lease => $_getN(4);
  @$pb.TagNumber(5)
  set lease($0.Lease v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLease() => $_has(4);
  @$pb.TagNumber(5)
  void clearLease() => clearField(5);
  @$pb.TagNumber(5)
  $0.Lease ensureLease() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => clearField(6);
}

class MsgCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgCreateResponse._() : super();
  factory MsgCreateResponse() => create();
  factory MsgCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateResponse clone() => MsgCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateResponse copyWith(void Function(MsgCreateResponse) updates) => super.copyWith((message) => updates(message as MsgCreateResponse)) as MsgCreateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreateResponse create() => MsgCreateResponse._();
  MsgCreateResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateResponse> createRepeated() => $pb.PbList<MsgCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateResponse>(create);
  static MsgCreateResponse? _defaultInstance;
}

class MsgUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aOM<$0.Lease>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lease', subBuilder: $0.Lease.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgUpdate._() : super();
  factory MsgUpdate({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
    $core.List<$core.int>? value,
    $0.Lease? lease,
    $core.List<$core.int>? metadata,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (lease != null) {
      _result.lease = lease;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory MsgUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdate clone() => MsgUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdate copyWith(void Function(MsgUpdate) updates) => super.copyWith((message) => updates(message as MsgUpdate)) as MsgUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpdate create() => MsgUpdate._();
  MsgUpdate createEmptyInstance() => create();
  static $pb.PbList<MsgUpdate> createRepeated() => $pb.PbList<MsgUpdate>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdate>(create);
  static MsgUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

  @$pb.TagNumber(4)
  $core.List<$core.int> get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);

  @$pb.TagNumber(5)
  $0.Lease get lease => $_getN(4);
  @$pb.TagNumber(5)
  set lease($0.Lease v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLease() => $_has(4);
  @$pb.TagNumber(5)
  void clearLease() => clearField(5);
  @$pb.TagNumber(5)
  $0.Lease ensureLease() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => clearField(6);
}

class MsgUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgUpdateResponse._() : super();
  factory MsgUpdateResponse() => create();
  factory MsgUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateResponse clone() => MsgUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateResponse copyWith(void Function(MsgUpdateResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateResponse)) as MsgUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpdateResponse create() => MsgUpdateResponse._();
  MsgUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateResponse> createRepeated() => $pb.PbList<MsgUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateResponse>(create);
  static MsgUpdateResponse? _defaultInstance;
}

class MsgDelete extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDelete', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  MsgDelete._() : super();
  factory MsgDelete({
    $core.String? creator,
    $core.String? uuid,
    $core.String? key,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory MsgDelete.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDelete.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDelete clone() => MsgDelete()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDelete copyWith(void Function(MsgDelete) updates) => super.copyWith((message) => updates(message as MsgDelete)) as MsgDelete; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDelete create() => MsgDelete._();
  MsgDelete createEmptyInstance() => create();
  static $pb.PbList<MsgDelete> createRepeated() => $pb.PbList<MsgDelete>();
  @$core.pragma('dart2js:noInline')
  static MsgDelete getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDelete>(create);
  static MsgDelete? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

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

class MsgDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDeleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bluzelle.curium.crud'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgDeleteResponse._() : super();
  factory MsgDeleteResponse() => create();
  factory MsgDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteResponse clone() => MsgDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteResponse copyWith(void Function(MsgDeleteResponse) updates) => super.copyWith((message) => updates(message as MsgDeleteResponse)) as MsgDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDeleteResponse create() => MsgDeleteResponse._();
  MsgDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteResponse> createRepeated() => $pb.PbList<MsgDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteResponse>(create);
  static MsgDeleteResponse? _defaultInstance;
}

class MsgApi {
  $pb.RpcClient _client;
  MsgApi(this._client);

  $async.Future<MsgCountResponse> count($pb.ClientContext? ctx, MsgCount request) {
    var emptyResponse = MsgCountResponse();
    return _client.invoke<MsgCountResponse>(ctx, 'Msg', 'Count', request, emptyResponse);
  }
  $async.Future<MsgRenewLeasesAllResponse> renewLeasesAll($pb.ClientContext? ctx, MsgRenewLeasesAll request) {
    var emptyResponse = MsgRenewLeasesAllResponse();
    return _client.invoke<MsgRenewLeasesAllResponse>(ctx, 'Msg', 'RenewLeasesAll', request, emptyResponse);
  }
  $async.Future<MsgRenewLeaseResponse> renewLease($pb.ClientContext? ctx, MsgRenewLease request) {
    var emptyResponse = MsgRenewLeaseResponse();
    return _client.invoke<MsgRenewLeaseResponse>(ctx, 'Msg', 'RenewLease', request, emptyResponse);
  }
  $async.Future<MsgGetNShortestLeasesResponse> getNShortestLeases($pb.ClientContext? ctx, MsgGetNShortestLeases request) {
    var emptyResponse = MsgGetNShortestLeasesResponse();
    return _client.invoke<MsgGetNShortestLeasesResponse>(ctx, 'Msg', 'GetNShortestLeases', request, emptyResponse);
  }
  $async.Future<MsgKeysResponse> keys($pb.ClientContext? ctx, MsgKeys request) {
    var emptyResponse = MsgKeysResponse();
    return _client.invoke<MsgKeysResponse>(ctx, 'Msg', 'Keys', request, emptyResponse);
  }
  $async.Future<MsgRenameResponse> rename($pb.ClientContext? ctx, MsgRename request) {
    var emptyResponse = MsgRenameResponse();
    return _client.invoke<MsgRenameResponse>(ctx, 'Msg', 'Rename', request, emptyResponse);
  }
  $async.Future<MsgMultiUpdateResponse> multiUpdate($pb.ClientContext? ctx, MsgMultiUpdate request) {
    var emptyResponse = MsgMultiUpdateResponse();
    return _client.invoke<MsgMultiUpdateResponse>(ctx, 'Msg', 'MultiUpdate', request, emptyResponse);
  }
  $async.Future<MsgDeleteAllResponse> deleteAll($pb.ClientContext? ctx, MsgDeleteAll request) {
    var emptyResponse = MsgDeleteAllResponse();
    return _client.invoke<MsgDeleteAllResponse>(ctx, 'Msg', 'DeleteAll', request, emptyResponse);
  }
  $async.Future<MsgKeyValuesResponse> keyValues($pb.ClientContext? ctx, MsgKeyValues request) {
    var emptyResponse = MsgKeyValuesResponse();
    return _client.invoke<MsgKeyValuesResponse>(ctx, 'Msg', 'KeyValues', request, emptyResponse);
  }
  $async.Future<MsgHasResponse> has($pb.ClientContext? ctx, MsgHas request) {
    var emptyResponse = MsgHasResponse();
    return _client.invoke<MsgHasResponse>(ctx, 'Msg', 'Has', request, emptyResponse);
  }
  $async.Future<MsgGetLeaseResponse> getLease($pb.ClientContext? ctx, MsgGetLease request) {
    var emptyResponse = MsgGetLeaseResponse();
    return _client.invoke<MsgGetLeaseResponse>(ctx, 'Msg', 'GetLease', request, emptyResponse);
  }
  $async.Future<MsgReadResponse> read($pb.ClientContext? ctx, MsgRead request) {
    var emptyResponse = MsgReadResponse();
    return _client.invoke<MsgReadResponse>(ctx, 'Msg', 'Read', request, emptyResponse);
  }
  $async.Future<MsgUpsertResponse> upsert($pb.ClientContext? ctx, MsgUpsert request) {
    var emptyResponse = MsgUpsertResponse();
    return _client.invoke<MsgUpsertResponse>(ctx, 'Msg', 'Upsert', request, emptyResponse);
  }
  $async.Future<MsgCreateResponse> create_($pb.ClientContext? ctx, MsgCreate request) {
    var emptyResponse = MsgCreateResponse();
    return _client.invoke<MsgCreateResponse>(ctx, 'Msg', 'Create', request, emptyResponse);
  }
  $async.Future<MsgUpdateResponse> update($pb.ClientContext? ctx, MsgUpdate request) {
    var emptyResponse = MsgUpdateResponse();
    return _client.invoke<MsgUpdateResponse>(ctx, 'Msg', 'Update', request, emptyResponse);
  }
  $async.Future<MsgDeleteResponse> delete($pb.ClientContext? ctx, MsgDelete request) {
    var emptyResponse = MsgDeleteResponse();
    return _client.invoke<MsgDeleteResponse>(ctx, 'Msg', 'Delete', request, emptyResponse);
  }
}

