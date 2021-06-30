///
//  Generated code. Do not modify.
//  source: crud/lease.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use leaseDescriptor instead')
const Lease$json = const {
  '1': 'Lease',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 13, '10': 'seconds'},
    const {'1': 'minutes', '3': 2, '4': 1, '5': 13, '10': 'minutes'},
    const {'1': 'hours', '3': 3, '4': 1, '5': 13, '10': 'hours'},
    const {'1': 'days', '3': 4, '4': 1, '5': 13, '10': 'days'},
    const {'1': 'years', '3': 5, '4': 1, '5': 13, '10': 'years'},
  ],
};

/// Descriptor for `Lease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseDescriptor = $convert.base64Decode('CgVMZWFzZRIYCgdzZWNvbmRzGAEgASgNUgdzZWNvbmRzEhgKB21pbnV0ZXMYAiABKA1SB21pbnV0ZXMSFAoFaG91cnMYAyABKA1SBWhvdXJzEhIKBGRheXMYBCABKA1SBGRheXMSFAoFeWVhcnMYBSABKA1SBXllYXJz');
