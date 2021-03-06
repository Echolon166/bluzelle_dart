///
//  Generated code. Do not modify.
//  source: cosmos/auth/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../base/query/v1beta1/pagination.pbjson.dart' as $1;
import '../../../google/protobuf/any.pbjson.dart' as $0;
import 'auth.pbjson.dart' as $2;

@$core.Deprecated('Use queryAccountsRequestDescriptor instead')
const QueryAccountsRequest$json = const {
  '1': 'QueryAccountsRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAccountsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountsRequestDescriptor = $convert.base64Decode('ChRRdWVyeUFjY291bnRzUmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryAccountsResponseDescriptor instead')
const QueryAccountsResponse$json = const {
  '1': 'QueryAccountsResponse',
  '2': const [
    const {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'accounts'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountsResponseDescriptor = $convert.base64Decode('ChVRdWVyeUFjY291bnRzUmVzcG9uc2USPgoIYWNjb3VudHMYASADKAsyFC5nb29nbGUucHJvdG9idWYuQW55QgzKtC0IQWNjb3VudElSCGFjY291bnRzEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryAccountRequestDescriptor instead')
const QueryAccountRequest$json = const {
  '1': 'QueryAccountRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
  '7': const {},
};

/// Descriptor for `QueryAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountRequestDescriptor = $convert.base64Decode('ChNRdWVyeUFjY291bnRSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3M6COigHwCIoB8A');
@$core.Deprecated('Use queryAccountResponseDescriptor instead')
const QueryAccountResponse$json = const {
  '1': 'QueryAccountResponse',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'account'},
  ],
};

/// Descriptor for `QueryAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountResponseDescriptor = $convert.base64Decode('ChRRdWVyeUFjY291bnRSZXNwb25zZRI8CgdhY2NvdW50GAEgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueUIMyrQtCEFjY291bnRJUgdhY2NvdW50');
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.auth.v1beta1.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjkKBnBhcmFtcxgBIAEoCzIbLmNvc21vcy5hdXRoLnYxYmV0YTEuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
const $core.Map<$core.String, $core.dynamic> QueryServiceBase$json = const {
  '1': 'Query',
  '2': const [
    const {'1': 'Accounts', '2': '.cosmos.auth.v1beta1.QueryAccountsRequest', '3': '.cosmos.auth.v1beta1.QueryAccountsResponse', '4': const {}},
    const {'1': 'Account', '2': '.cosmos.auth.v1beta1.QueryAccountRequest', '3': '.cosmos.auth.v1beta1.QueryAccountResponse', '4': const {}},
    const {'1': 'Params', '2': '.cosmos.auth.v1beta1.QueryParamsRequest', '3': '.cosmos.auth.v1beta1.QueryParamsResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use queryServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> QueryServiceBase$messageJson = const {
  '.cosmos.auth.v1beta1.QueryAccountsRequest': QueryAccountsRequest$json,
  '.cosmos.base.query.v1beta1.PageRequest': $1.PageRequest$json,
  '.cosmos.auth.v1beta1.QueryAccountsResponse': QueryAccountsResponse$json,
  '.google.protobuf.Any': $0.Any$json,
  '.cosmos.base.query.v1beta1.PageResponse': $1.PageResponse$json,
  '.cosmos.auth.v1beta1.QueryAccountRequest': QueryAccountRequest$json,
  '.cosmos.auth.v1beta1.QueryAccountResponse': QueryAccountResponse$json,
  '.cosmos.auth.v1beta1.QueryParamsRequest': QueryParamsRequest$json,
  '.cosmos.auth.v1beta1.QueryParamsResponse': QueryParamsResponse$json,
  '.cosmos.auth.v1beta1.Params': $2.Params$json,
};

/// Descriptor for `Query`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List queryServiceDescriptor = $convert.base64Decode('CgVRdWVyeRKIAQoIQWNjb3VudHMSKS5jb3Ntb3MuYXV0aC52MWJldGExLlF1ZXJ5QWNjb3VudHNSZXF1ZXN0GiouY29zbW9zLmF1dGgudjFiZXRhMS5RdWVyeUFjY291bnRzUmVzcG9uc2UiJYLT5JMCHxIdL2Nvc21vcy9hdXRoL3YxYmV0YTEvYWNjb3VudHMSjwEKB0FjY291bnQSKC5jb3Ntb3MuYXV0aC52MWJldGExLlF1ZXJ5QWNjb3VudFJlcXVlc3QaKS5jb3Ntb3MuYXV0aC52MWJldGExLlF1ZXJ5QWNjb3VudFJlc3BvbnNlIi+C0+STAikSJy9jb3Ntb3MvYXV0aC92MWJldGExL2FjY291bnRzL3thZGRyZXNzfRKAAQoGUGFyYW1zEicuY29zbW9zLmF1dGgudjFiZXRhMS5RdWVyeVBhcmFtc1JlcXVlc3QaKC5jb3Ntb3MuYXV0aC52MWJldGExLlF1ZXJ5UGFyYW1zUmVzcG9uc2UiI4LT5JMCHRIbL2Nvc21vcy9hdXRoL3YxYmV0YTEvcGFyYW1z');
