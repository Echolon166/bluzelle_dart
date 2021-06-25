///
//  Generated code. Do not modify.
//  source: crud/Paging.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pagingRequestDescriptor instead')
const PagingRequest$json = const {
  '1': 'PagingRequest',
  '2': const [
    const {'1': 'startKey', '3': 1, '4': 1, '5': 9, '10': 'startKey'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 4, '10': 'limit'},
  ],
};

/// Descriptor for `PagingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagingRequestDescriptor = $convert.base64Decode('Cg1QYWdpbmdSZXF1ZXN0EhoKCHN0YXJ0S2V5GAEgASgJUghzdGFydEtleRIUCgVsaW1pdBgCIAEoBFIFbGltaXQ=');
@$core.Deprecated('Use pagingResponseDescriptor instead')
const PagingResponse$json = const {
  '1': 'PagingResponse',
  '2': const [
    const {'1': 'nextKey', '3': 1, '4': 1, '5': 9, '10': 'nextKey'},
    const {'1': 'total', '3': 2, '4': 1, '5': 4, '10': 'total'},
  ],
};

/// Descriptor for `PagingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagingResponseDescriptor = $convert.base64Decode('Cg5QYWdpbmdSZXNwb25zZRIYCgduZXh0S2V5GAEgASgJUgduZXh0S2V5EhQKBXRvdGFsGAIgASgEUgV0b3RhbA==');
