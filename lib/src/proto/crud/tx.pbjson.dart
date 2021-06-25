///
//  Generated code. Do not modify.
//  source: crud/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'lease.pbjson.dart' as $0;
import 'KeyValue.pbjson.dart' as $3;
import 'Paging.pbjson.dart' as $2;

@$core.Deprecated('Use msgCountDescriptor instead')
const MsgCount$json = const {
  '1': 'MsgCount',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `MsgCount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCountDescriptor = $convert.base64Decode('CghNc2dDb3VudBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhIKBHV1aWQYAiABKAlSBHV1aWQ=');
@$core.Deprecated('Use msgCountResponseDescriptor instead')
const MsgCountResponse$json = const {
  '1': 'MsgCountResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `MsgCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCountResponseDescriptor = $convert.base64Decode('ChBNc2dDb3VudFJlc3BvbnNlEhQKBWNvdW50GAEgASgNUgVjb3VudA==');
@$core.Deprecated('Use msgRenewLeasesAllDescriptor instead')
const MsgRenewLeasesAll$json = const {
  '1': 'MsgRenewLeasesAll',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'lease', '3': 3, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.Lease', '10': 'lease'},
  ],
};

/// Descriptor for `MsgRenewLeasesAll`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRenewLeasesAllDescriptor = $convert.base64Decode('ChFNc2dSZW5ld0xlYXNlc0FsbBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhIKBHV1aWQYAiABKAlSBHV1aWQSMQoFbGVhc2UYAyABKAsyGy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5MZWFzZVIFbGVhc2U=');
@$core.Deprecated('Use msgRenewLeasesAllResponseDescriptor instead')
const MsgRenewLeasesAllResponse$json = const {
  '1': 'MsgRenewLeasesAllResponse',
};

/// Descriptor for `MsgRenewLeasesAllResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRenewLeasesAllResponseDescriptor = $convert.base64Decode('ChlNc2dSZW5ld0xlYXNlc0FsbFJlc3BvbnNl');
@$core.Deprecated('Use msgRenewLeaseDescriptor instead')
const MsgRenewLease$json = const {
  '1': 'MsgRenewLease',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'lease', '3': 4, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.Lease', '10': 'lease'},
  ],
};

/// Descriptor for `MsgRenewLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRenewLeaseDescriptor = $convert.base64Decode('Cg1Nc2dSZW5ld0xlYXNlEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISEgoEdXVpZBgCIAEoCVIEdXVpZBIQCgNrZXkYAyABKAlSA2tleRIxCgVsZWFzZRgEIAEoCzIbLmJsdXplbGxlLmN1cml1bS5jcnVkLkxlYXNlUgVsZWFzZQ==');
@$core.Deprecated('Use msgRenewLeaseResponseDescriptor instead')
const MsgRenewLeaseResponse$json = const {
  '1': 'MsgRenewLeaseResponse',
};

/// Descriptor for `MsgRenewLeaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRenewLeaseResponseDescriptor = $convert.base64Decode('ChVNc2dSZW5ld0xlYXNlUmVzcG9uc2U=');
@$core.Deprecated('Use msgGetNShortestLeasesDescriptor instead')
const MsgGetNShortestLeases$json = const {
  '1': 'MsgGetNShortestLeases',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'num', '3': 3, '4': 1, '5': 13, '10': 'num'},
  ],
};

/// Descriptor for `MsgGetNShortestLeases`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgGetNShortestLeasesDescriptor = $convert.base64Decode('ChVNc2dHZXROU2hvcnRlc3RMZWFzZXMSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA251bRgDIAEoDVIDbnVt');
@$core.Deprecated('Use msgGetNShortestLeasesResponseDescriptor instead')
const MsgGetNShortestLeasesResponse$json = const {
  '1': 'MsgGetNShortestLeasesResponse',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'keyLeases', '3': 2, '4': 3, '5': 11, '6': '.bluzelle.curium.crud.KeyLease', '10': 'keyLeases'},
  ],
};

/// Descriptor for `MsgGetNShortestLeasesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgGetNShortestLeasesResponseDescriptor = $convert.base64Decode('Ch1Nc2dHZXROU2hvcnRlc3RMZWFzZXNSZXNwb25zZRISCgR1dWlkGAEgASgJUgR1dWlkEjwKCWtleUxlYXNlcxgCIAMoCzIeLmJsdXplbGxlLmN1cml1bS5jcnVkLktleUxlYXNlUglrZXlMZWFzZXM=');
@$core.Deprecated('Use msgKeysDescriptor instead')
const MsgKeys$json = const {
  '1': 'MsgKeys',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'pagination', '3': 3, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `MsgKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgKeysDescriptor = $convert.base64Decode('CgdNc2dLZXlzEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISEgoEdXVpZBgCIAEoCVIEdXVpZBJDCgpwYWdpbmF0aW9uGAMgASgLMiMuYmx1emVsbGUuY3VyaXVtLmNydWQuUGFnaW5nUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use msgKeysResponseDescriptor instead')
const MsgKeysResponse$json = const {
  '1': 'MsgKeysResponse',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 9, '10': 'keys'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `MsgKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgKeysResponseDescriptor = $convert.base64Decode('Cg9Nc2dLZXlzUmVzcG9uc2USEgoEa2V5cxgBIAMoCVIEa2V5cxJECgpwYWdpbmF0aW9uGAIgASgLMiQuYmx1emVsbGUuY3VyaXVtLmNydWQuUGFnaW5nUmVzcG9uc2VSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use msgRenameDescriptor instead')
const MsgRename$json = const {
  '1': 'MsgRename',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'newKey', '3': 4, '4': 1, '5': 9, '10': 'newKey'},
  ],
};

/// Descriptor for `MsgRename`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRenameDescriptor = $convert.base64Decode('CglNc2dSZW5hbWUSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA2tleRgDIAEoCVIDa2V5EhYKBm5ld0tleRgEIAEoCVIGbmV3S2V5');
@$core.Deprecated('Use msgRenameResponseDescriptor instead')
const MsgRenameResponse$json = const {
  '1': 'MsgRenameResponse',
};

/// Descriptor for `MsgRenameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRenameResponseDescriptor = $convert.base64Decode('ChFNc2dSZW5hbWVSZXNwb25zZQ==');
@$core.Deprecated('Use msgMultiUpdateDescriptor instead')
const MsgMultiUpdate$json = const {
  '1': 'MsgMultiUpdate',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'keyValues', '3': 3, '4': 3, '5': 11, '6': '.bluzelle.curium.crud.KeyValueLease', '10': 'keyValues'},
  ],
};

/// Descriptor for `MsgMultiUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgMultiUpdateDescriptor = $convert.base64Decode('Cg5Nc2dNdWx0aVVwZGF0ZRIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhIKBHV1aWQYAiABKAlSBHV1aWQSQQoJa2V5VmFsdWVzGAMgAygLMiMuYmx1emVsbGUuY3VyaXVtLmNydWQuS2V5VmFsdWVMZWFzZVIJa2V5VmFsdWVz');
@$core.Deprecated('Use msgMultiUpdateResponseDescriptor instead')
const MsgMultiUpdateResponse$json = const {
  '1': 'MsgMultiUpdateResponse',
};

/// Descriptor for `MsgMultiUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgMultiUpdateResponseDescriptor = $convert.base64Decode('ChZNc2dNdWx0aVVwZGF0ZVJlc3BvbnNl');
@$core.Deprecated('Use msgDeleteAllDescriptor instead')
const MsgDeleteAll$json = const {
  '1': 'MsgDeleteAll',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `MsgDeleteAll`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteAllDescriptor = $convert.base64Decode('CgxNc2dEZWxldGVBbGwSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlk');
@$core.Deprecated('Use msgDeleteAllResponseDescriptor instead')
const MsgDeleteAllResponse$json = const {
  '1': 'MsgDeleteAllResponse',
};

/// Descriptor for `MsgDeleteAllResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteAllResponseDescriptor = $convert.base64Decode('ChRNc2dEZWxldGVBbGxSZXNwb25zZQ==');
@$core.Deprecated('Use msgKeyValuesDescriptor instead')
const MsgKeyValues$json = const {
  '1': 'MsgKeyValues',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'pagination', '3': 3, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `MsgKeyValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgKeyValuesDescriptor = $convert.base64Decode('CgxNc2dLZXlWYWx1ZXMSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEkMKCnBhZ2luYXRpb24YAyABKAsyIy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5QYWdpbmdSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use msgKeyValuesResponseDescriptor instead')
const MsgKeyValuesResponse$json = const {
  '1': 'MsgKeyValuesResponse',
  '2': const [
    const {'1': 'keyValues', '3': 1, '4': 3, '5': 11, '6': '.bluzelle.curium.crud.KeyValue', '10': 'keyValues'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `MsgKeyValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgKeyValuesResponseDescriptor = $convert.base64Decode('ChRNc2dLZXlWYWx1ZXNSZXNwb25zZRI8CglrZXlWYWx1ZXMYASADKAsyHi5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5LZXlWYWx1ZVIJa2V5VmFsdWVzEkQKCnBhZ2luYXRpb24YAiABKAsyJC5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5QYWdpbmdSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use msgHasDescriptor instead')
const MsgHas$json = const {
  '1': 'MsgHas',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `MsgHas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgHasDescriptor = $convert.base64Decode('CgZNc2dIYXMSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA2tleRgDIAEoCVIDa2V5');
@$core.Deprecated('Use msgHasResponseDescriptor instead')
const MsgHasResponse$json = const {
  '1': 'MsgHasResponse',
  '2': const [
    const {'1': 'has', '3': 1, '4': 1, '5': 8, '10': 'has'},
  ],
};

/// Descriptor for `MsgHasResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgHasResponseDescriptor = $convert.base64Decode('Cg5Nc2dIYXNSZXNwb25zZRIQCgNoYXMYASABKAhSA2hhcw==');
@$core.Deprecated('Use msgGetLeaseDescriptor instead')
const MsgGetLease$json = const {
  '1': 'MsgGetLease',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `MsgGetLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgGetLeaseDescriptor = $convert.base64Decode('CgtNc2dHZXRMZWFzZRIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhIKBHV1aWQYAiABKAlSBHV1aWQSEAoDa2V5GAMgASgJUgNrZXk=');
@$core.Deprecated('Use msgGetLeaseResponseDescriptor instead')
const MsgGetLeaseResponse$json = const {
  '1': 'MsgGetLeaseResponse',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'seconds', '3': 3, '4': 1, '5': 13, '10': 'seconds'},
  ],
};

/// Descriptor for `MsgGetLeaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgGetLeaseResponseDescriptor = $convert.base64Decode('ChNNc2dHZXRMZWFzZVJlc3BvbnNlEhIKBHV1aWQYASABKAlSBHV1aWQSEAoDa2V5GAIgASgJUgNrZXkSGAoHc2Vjb25kcxgDIAEoDVIHc2Vjb25kcw==');
@$core.Deprecated('Use msgReadDescriptor instead')
const MsgRead$json = const {
  '1': 'MsgRead',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `MsgRead`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgReadDescriptor = $convert.base64Decode('CgdNc2dSZWFkEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISEgoEdXVpZBgCIAEoCVIEdXVpZBIQCgNrZXkYAyABKAlSA2tleQ==');
@$core.Deprecated('Use msgReadResponseDescriptor instead')
const MsgReadResponse$json = const {
  '1': 'MsgReadResponse',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `MsgReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgReadResponseDescriptor = $convert.base64Decode('Cg9Nc2dSZWFkUmVzcG9uc2USFAoFdmFsdWUYASABKAxSBXZhbHVlEhAKA2tleRgCIAEoCVIDa2V5');
@$core.Deprecated('Use msgUpsertDescriptor instead')
const MsgUpsert$json = const {
  '1': 'MsgUpsert',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 4, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'lease', '3': 5, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.Lease', '10': 'lease'},
    const {'1': 'metadata', '3': 6, '4': 1, '5': 12, '10': 'metadata'},
  ],
};

/// Descriptor for `MsgUpsert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpsertDescriptor = $convert.base64Decode('CglNc2dVcHNlcnQSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA2tleRgDIAEoCVIDa2V5EhQKBXZhbHVlGAQgASgMUgV2YWx1ZRIxCgVsZWFzZRgFIAEoCzIbLmJsdXplbGxlLmN1cml1bS5jcnVkLkxlYXNlUgVsZWFzZRIaCghtZXRhZGF0YRgGIAEoDFIIbWV0YWRhdGE=');
@$core.Deprecated('Use msgUpsertResponseDescriptor instead')
const MsgUpsertResponse$json = const {
  '1': 'MsgUpsertResponse',
};

/// Descriptor for `MsgUpsertResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpsertResponseDescriptor = $convert.base64Decode('ChFNc2dVcHNlcnRSZXNwb25zZQ==');
@$core.Deprecated('Use msgCreateDescriptor instead')
const MsgCreate$json = const {
  '1': 'MsgCreate',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 4, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'lease', '3': 5, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.Lease', '10': 'lease'},
    const {'1': 'metadata', '3': 6, '4': 1, '5': 12, '10': 'metadata'},
  ],
};

/// Descriptor for `MsgCreate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateDescriptor = $convert.base64Decode('CglNc2dDcmVhdGUSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA2tleRgDIAEoCVIDa2V5EhQKBXZhbHVlGAQgASgMUgV2YWx1ZRIxCgVsZWFzZRgFIAEoCzIbLmJsdXplbGxlLmN1cml1bS5jcnVkLkxlYXNlUgVsZWFzZRIaCghtZXRhZGF0YRgGIAEoDFIIbWV0YWRhdGE=');
@$core.Deprecated('Use msgCreateResponseDescriptor instead')
const MsgCreateResponse$json = const {
  '1': 'MsgCreateResponse',
};

/// Descriptor for `MsgCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateResponseDescriptor = $convert.base64Decode('ChFNc2dDcmVhdGVSZXNwb25zZQ==');
@$core.Deprecated('Use msgUpdateDescriptor instead')
const MsgUpdate$json = const {
  '1': 'MsgUpdate',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 4, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'lease', '3': 5, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.Lease', '10': 'lease'},
    const {'1': 'metadata', '3': 6, '4': 1, '5': 12, '10': 'metadata'},
  ],
};

/// Descriptor for `MsgUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateDescriptor = $convert.base64Decode('CglNc2dVcGRhdGUSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA2tleRgDIAEoCVIDa2V5EhQKBXZhbHVlGAQgASgMUgV2YWx1ZRIxCgVsZWFzZRgFIAEoCzIbLmJsdXplbGxlLmN1cml1bS5jcnVkLkxlYXNlUgVsZWFzZRIaCghtZXRhZGF0YRgGIAEoDFIIbWV0YWRhdGE=');
@$core.Deprecated('Use msgUpdateResponseDescriptor instead')
const MsgUpdateResponse$json = const {
  '1': 'MsgUpdateResponse',
};

/// Descriptor for `MsgUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateResponseDescriptor = $convert.base64Decode('ChFNc2dVcGRhdGVSZXNwb25zZQ==');
@$core.Deprecated('Use msgDeleteDescriptor instead')
const MsgDelete$json = const {
  '1': 'MsgDelete',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `MsgDelete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteDescriptor = $convert.base64Decode('CglNc2dEZWxldGUSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgR1dWlkGAIgASgJUgR1dWlkEhAKA2tleRgDIAEoCVIDa2V5');
@$core.Deprecated('Use msgDeleteResponseDescriptor instead')
const MsgDeleteResponse$json = const {
  '1': 'MsgDeleteResponse',
};

/// Descriptor for `MsgDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteResponseDescriptor = $convert.base64Decode('ChFNc2dEZWxldGVSZXNwb25zZQ==');
const $core.Map<$core.String, $core.dynamic> MsgServiceBase$json = const {
  '1': 'Msg',
  '2': const [
    const {'1': 'Count', '2': '.bluzelle.curium.crud.MsgCount', '3': '.bluzelle.curium.crud.MsgCountResponse'},
    const {'1': 'RenewLeasesAll', '2': '.bluzelle.curium.crud.MsgRenewLeasesAll', '3': '.bluzelle.curium.crud.MsgRenewLeasesAllResponse'},
    const {'1': 'RenewLease', '2': '.bluzelle.curium.crud.MsgRenewLease', '3': '.bluzelle.curium.crud.MsgRenewLeaseResponse'},
    const {'1': 'GetNShortestLeases', '2': '.bluzelle.curium.crud.MsgGetNShortestLeases', '3': '.bluzelle.curium.crud.MsgGetNShortestLeasesResponse'},
    const {'1': 'Keys', '2': '.bluzelle.curium.crud.MsgKeys', '3': '.bluzelle.curium.crud.MsgKeysResponse'},
    const {'1': 'Rename', '2': '.bluzelle.curium.crud.MsgRename', '3': '.bluzelle.curium.crud.MsgRenameResponse'},
    const {'1': 'MultiUpdate', '2': '.bluzelle.curium.crud.MsgMultiUpdate', '3': '.bluzelle.curium.crud.MsgMultiUpdateResponse'},
    const {'1': 'DeleteAll', '2': '.bluzelle.curium.crud.MsgDeleteAll', '3': '.bluzelle.curium.crud.MsgDeleteAllResponse'},
    const {'1': 'KeyValues', '2': '.bluzelle.curium.crud.MsgKeyValues', '3': '.bluzelle.curium.crud.MsgKeyValuesResponse'},
    const {'1': 'Has', '2': '.bluzelle.curium.crud.MsgHas', '3': '.bluzelle.curium.crud.MsgHasResponse'},
    const {'1': 'GetLease', '2': '.bluzelle.curium.crud.MsgGetLease', '3': '.bluzelle.curium.crud.MsgGetLeaseResponse'},
    const {'1': 'Read', '2': '.bluzelle.curium.crud.MsgRead', '3': '.bluzelle.curium.crud.MsgReadResponse'},
    const {'1': 'Upsert', '2': '.bluzelle.curium.crud.MsgUpsert', '3': '.bluzelle.curium.crud.MsgUpsertResponse'},
    const {'1': 'Create', '2': '.bluzelle.curium.crud.MsgCreate', '3': '.bluzelle.curium.crud.MsgCreateResponse'},
    const {'1': 'Update', '2': '.bluzelle.curium.crud.MsgUpdate', '3': '.bluzelle.curium.crud.MsgUpdateResponse'},
    const {'1': 'Delete', '2': '.bluzelle.curium.crud.MsgDelete', '3': '.bluzelle.curium.crud.MsgDeleteResponse'},
  ],
};

@$core.Deprecated('Use msgServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> MsgServiceBase$messageJson = const {
  '.bluzelle.curium.crud.MsgCount': MsgCount$json,
  '.bluzelle.curium.crud.MsgCountResponse': MsgCountResponse$json,
  '.bluzelle.curium.crud.MsgRenewLeasesAll': MsgRenewLeasesAll$json,
  '.bluzelle.curium.crud.Lease': $0.Lease$json,
  '.bluzelle.curium.crud.MsgRenewLeasesAllResponse': MsgRenewLeasesAllResponse$json,
  '.bluzelle.curium.crud.MsgRenewLease': MsgRenewLease$json,
  '.bluzelle.curium.crud.MsgRenewLeaseResponse': MsgRenewLeaseResponse$json,
  '.bluzelle.curium.crud.MsgGetNShortestLeases': MsgGetNShortestLeases$json,
  '.bluzelle.curium.crud.MsgGetNShortestLeasesResponse': MsgGetNShortestLeasesResponse$json,
  '.bluzelle.curium.crud.KeyLease': $3.KeyLease$json,
  '.bluzelle.curium.crud.MsgKeys': MsgKeys$json,
  '.bluzelle.curium.crud.PagingRequest': $2.PagingRequest$json,
  '.bluzelle.curium.crud.MsgKeysResponse': MsgKeysResponse$json,
  '.bluzelle.curium.crud.PagingResponse': $2.PagingResponse$json,
  '.bluzelle.curium.crud.MsgRename': MsgRename$json,
  '.bluzelle.curium.crud.MsgRenameResponse': MsgRenameResponse$json,
  '.bluzelle.curium.crud.MsgMultiUpdate': MsgMultiUpdate$json,
  '.bluzelle.curium.crud.KeyValueLease': $3.KeyValueLease$json,
  '.bluzelle.curium.crud.MsgMultiUpdateResponse': MsgMultiUpdateResponse$json,
  '.bluzelle.curium.crud.MsgDeleteAll': MsgDeleteAll$json,
  '.bluzelle.curium.crud.MsgDeleteAllResponse': MsgDeleteAllResponse$json,
  '.bluzelle.curium.crud.MsgKeyValues': MsgKeyValues$json,
  '.bluzelle.curium.crud.MsgKeyValuesResponse': MsgKeyValuesResponse$json,
  '.bluzelle.curium.crud.KeyValue': $3.KeyValue$json,
  '.bluzelle.curium.crud.MsgHas': MsgHas$json,
  '.bluzelle.curium.crud.MsgHasResponse': MsgHasResponse$json,
  '.bluzelle.curium.crud.MsgGetLease': MsgGetLease$json,
  '.bluzelle.curium.crud.MsgGetLeaseResponse': MsgGetLeaseResponse$json,
  '.bluzelle.curium.crud.MsgRead': MsgRead$json,
  '.bluzelle.curium.crud.MsgReadResponse': MsgReadResponse$json,
  '.bluzelle.curium.crud.MsgUpsert': MsgUpsert$json,
  '.bluzelle.curium.crud.MsgUpsertResponse': MsgUpsertResponse$json,
  '.bluzelle.curium.crud.MsgCreate': MsgCreate$json,
  '.bluzelle.curium.crud.MsgCreateResponse': MsgCreateResponse$json,
  '.bluzelle.curium.crud.MsgUpdate': MsgUpdate$json,
  '.bluzelle.curium.crud.MsgUpdateResponse': MsgUpdateResponse$json,
  '.bluzelle.curium.crud.MsgDelete': MsgDelete$json,
  '.bluzelle.curium.crud.MsgDeleteResponse': MsgDeleteResponse$json,
};

/// Descriptor for `Msg`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List msgServiceDescriptor = $convert.base64Decode('CgNNc2cSTwoFQ291bnQSHi5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dDb3VudBomLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ0NvdW50UmVzcG9uc2USagoOUmVuZXdMZWFzZXNBbGwSJy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dSZW5ld0xlYXNlc0FsbBovLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ1JlbmV3TGVhc2VzQWxsUmVzcG9uc2USXgoKUmVuZXdMZWFzZRIjLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ1JlbmV3TGVhc2UaKy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dSZW5ld0xlYXNlUmVzcG9uc2USdgoSR2V0TlNob3J0ZXN0TGVhc2VzEisuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnR2V0TlNob3J0ZXN0TGVhc2VzGjMuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnR2V0TlNob3J0ZXN0TGVhc2VzUmVzcG9uc2USTAoES2V5cxIdLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ0tleXMaJS5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dLZXlzUmVzcG9uc2USUgoGUmVuYW1lEh8uYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnUmVuYW1lGicuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnUmVuYW1lUmVzcG9uc2USYQoLTXVsdGlVcGRhdGUSJC5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dNdWx0aVVwZGF0ZRosLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ011bHRpVXBkYXRlUmVzcG9uc2USWwoJRGVsZXRlQWxsEiIuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnRGVsZXRlQWxsGiouYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnRGVsZXRlQWxsUmVzcG9uc2USWwoJS2V5VmFsdWVzEiIuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnS2V5VmFsdWVzGiouYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnS2V5VmFsdWVzUmVzcG9uc2USSQoDSGFzEhwuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnSGFzGiQuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnSGFzUmVzcG9uc2USWAoIR2V0TGVhc2USIS5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dHZXRMZWFzZRopLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ0dldExlYXNlUmVzcG9uc2USTAoEUmVhZBIdLmJsdXplbGxlLmN1cml1bS5jcnVkLk1zZ1JlYWQaJS5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5Nc2dSZWFkUmVzcG9uc2USUgoGVXBzZXJ0Eh8uYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnVXBzZXJ0GicuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnVXBzZXJ0UmVzcG9uc2USUgoGQ3JlYXRlEh8uYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnQ3JlYXRlGicuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnQ3JlYXRlUmVzcG9uc2USUgoGVXBkYXRlEh8uYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnVXBkYXRlGicuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnVXBkYXRlUmVzcG9uc2USUgoGRGVsZXRlEh8uYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnRGVsZXRlGicuYmx1emVsbGUuY3VyaXVtLmNydWQuTXNnRGVsZXRlUmVzcG9uc2U=');
