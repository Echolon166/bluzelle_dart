///
//  Generated code. Do not modify.
//  source: crud/KeyValue.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use keyValueDescriptor instead')
const KeyValue$json = const {
  '1': 'KeyValue',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `KeyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDescriptor = $convert.base64Decode('CghLZXlWYWx1ZRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU=');
@$core.Deprecated('Use keyValueLeaseDescriptor instead')
const KeyValueLease$json = const {
  '1': 'KeyValueLease',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'lease', '3': 3, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.Lease', '10': 'lease'},
  ],
};

/// Descriptor for `KeyValueLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueLeaseDescriptor = $convert.base64Decode('Cg1LZXlWYWx1ZUxlYXNlEhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZRIxCgVsZWFzZRgDIAEoCzIbLmJsdXplbGxlLmN1cml1bS5jcnVkLkxlYXNlUgVsZWFzZQ==');
@$core.Deprecated('Use keyLeaseDescriptor instead')
const KeyLease$json = const {
  '1': 'KeyLease',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'seconds', '3': 2, '4': 1, '5': 13, '10': 'seconds'},
  ],
};

/// Descriptor for `KeyLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyLeaseDescriptor = $convert.base64Decode('CghLZXlMZWFzZRIQCgNrZXkYASABKAlSA2tleRIYCgdzZWNvbmRzGAIgASgNUgdzZWNvbmRz');
