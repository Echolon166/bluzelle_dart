///
//  Generated code. Do not modify.
//  source: cosmos/bank/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../base/v1beta1/coin.pbjson.dart' as $0;
import '../../base/query/v1beta1/pagination.pbjson.dart' as $1;
import 'bank.pbjson.dart' as $2;

@$core.Deprecated('Use queryBalanceRequestDescriptor instead')
const QueryBalanceRequest$json = const {
  '1': 'QueryBalanceRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'denom', '3': 2, '4': 1, '5': 9, '10': 'denom'},
  ],
  '7': const {},
};

/// Descriptor for `QueryBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBalanceRequestDescriptor = $convert.base64Decode('ChNRdWVyeUJhbGFuY2VSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSFAoFZGVub20YAiABKAlSBWRlbm9tOgjooB8AiKAfAA==');
@$core.Deprecated('Use queryBalanceResponseDescriptor instead')
const QueryBalanceResponse$json = const {
  '1': 'QueryBalanceResponse',
  '2': const [
    const {'1': 'balance', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '10': 'balance'},
  ],
};

/// Descriptor for `QueryBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBalanceResponseDescriptor = $convert.base64Decode('ChRRdWVyeUJhbGFuY2VSZXNwb25zZRIzCgdiYWxhbmNlGAEgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luUgdiYWxhbmNl');
@$core.Deprecated('Use queryAllBalancesRequestDescriptor instead')
const QueryAllBalancesRequest$json = const {
  '1': 'QueryAllBalancesRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
  '7': const {},
};

/// Descriptor for `QueryAllBalancesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllBalancesRequestDescriptor = $convert.base64Decode('ChdRdWVyeUFsbEJhbGFuY2VzUmVxdWVzdBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEkYKCnBhZ2luYXRpb24YAiABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9uOgjooB8AiKAfAA==');
@$core.Deprecated('Use queryAllBalancesResponseDescriptor instead')
const QueryAllBalancesResponse$json = const {
  '1': 'QueryAllBalancesResponse',
  '2': const [
    const {'1': 'balances', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'balances'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllBalancesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllBalancesResponseDescriptor = $convert.base64Decode('ChhRdWVyeUFsbEJhbGFuY2VzUmVzcG9uc2USZwoIYmFsYW5jZXMYASADKAsyGS5jb3Ntb3MuYmFzZS52MWJldGExLkNvaW5CMMjeHwCq3x8oZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5Db2luc1IIYmFsYW5jZXMSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryTotalSupplyRequestDescriptor instead')
const QueryTotalSupplyRequest$json = const {
  '1': 'QueryTotalSupplyRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
  '7': const {},
};

/// Descriptor for `QueryTotalSupplyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTotalSupplyRequestDescriptor = $convert.base64Decode('ChdRdWVyeVRvdGFsU3VwcGx5UmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbjoI6KAfAIigHwA=');
@$core.Deprecated('Use queryTotalSupplyResponseDescriptor instead')
const QueryTotalSupplyResponse$json = const {
  '1': 'QueryTotalSupplyResponse',
  '2': const [
    const {'1': 'supply', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'supply'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryTotalSupplyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTotalSupplyResponseDescriptor = $convert.base64Decode('ChhRdWVyeVRvdGFsU3VwcGx5UmVzcG9uc2USYwoGc3VwcGx5GAEgAygLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQjDI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29pbnNSBnN1cHBseRJHCgpwYWdpbmF0aW9uGAIgASgLMicuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVzcG9uc2VSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use querySupplyOfRequestDescriptor instead')
const QuerySupplyOfRequest$json = const {
  '1': 'QuerySupplyOfRequest',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
  ],
};

/// Descriptor for `QuerySupplyOfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List querySupplyOfRequestDescriptor = $convert.base64Decode('ChRRdWVyeVN1cHBseU9mUmVxdWVzdBIUCgVkZW5vbRgBIAEoCVIFZGVub20=');
@$core.Deprecated('Use querySupplyOfResponseDescriptor instead')
const QuerySupplyOfResponse$json = const {
  '1': 'QuerySupplyOfResponse',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'amount'},
  ],
};

/// Descriptor for `QuerySupplyOfResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List querySupplyOfResponseDescriptor = $convert.base64Decode('ChVRdWVyeVN1cHBseU9mUmVzcG9uc2USNwoGYW1vdW50GAEgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQgTI3h8AUgZhbW91bnQ=');
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
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.bank.v1beta1.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjkKBnBhcmFtcxgBIAEoCzIbLmNvc21vcy5iYW5rLnYxYmV0YTEuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
@$core.Deprecated('Use queryDenomsMetadataRequestDescriptor instead')
const QueryDenomsMetadataRequest$json = const {
  '1': 'QueryDenomsMetadataRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryDenomsMetadataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDenomsMetadataRequestDescriptor = $convert.base64Decode('ChpRdWVyeURlbm9tc01ldGFkYXRhUmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryDenomsMetadataResponseDescriptor instead')
const QueryDenomsMetadataResponse$json = const {
  '1': 'QueryDenomsMetadataResponse',
  '2': const [
    const {'1': 'metadatas', '3': 1, '4': 3, '5': 11, '6': '.cosmos.bank.v1beta1.Metadata', '8': const {}, '10': 'metadatas'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryDenomsMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDenomsMetadataResponseDescriptor = $convert.base64Decode('ChtRdWVyeURlbm9tc01ldGFkYXRhUmVzcG9uc2USQQoJbWV0YWRhdGFzGAEgAygLMh0uY29zbW9zLmJhbmsudjFiZXRhMS5NZXRhZGF0YUIEyN4fAFIJbWV0YWRhdGFzEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryDenomMetadataRequestDescriptor instead')
const QueryDenomMetadataRequest$json = const {
  '1': 'QueryDenomMetadataRequest',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
  ],
};

/// Descriptor for `QueryDenomMetadataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDenomMetadataRequestDescriptor = $convert.base64Decode('ChlRdWVyeURlbm9tTWV0YWRhdGFSZXF1ZXN0EhQKBWRlbm9tGAEgASgJUgVkZW5vbQ==');
@$core.Deprecated('Use queryDenomMetadataResponseDescriptor instead')
const QueryDenomMetadataResponse$json = const {
  '1': 'QueryDenomMetadataResponse',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.cosmos.bank.v1beta1.Metadata', '8': const {}, '10': 'metadata'},
  ],
};

/// Descriptor for `QueryDenomMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDenomMetadataResponseDescriptor = $convert.base64Decode('ChpRdWVyeURlbm9tTWV0YWRhdGFSZXNwb25zZRI/CghtZXRhZGF0YRgBIAEoCzIdLmNvc21vcy5iYW5rLnYxYmV0YTEuTWV0YWRhdGFCBMjeHwBSCG1ldGFkYXRh');
@$core.Deprecated('Use queryDenomOwnersRequestDescriptor instead')
const QueryDenomOwnersRequest$json = const {
  '1': 'QueryDenomOwnersRequest',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryDenomOwnersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDenomOwnersRequestDescriptor = $convert.base64Decode('ChdRdWVyeURlbm9tT3duZXJzUmVxdWVzdBIUCgVkZW5vbRgBIAEoCVIFZGVub20SRgoKcGFnaW5hdGlvbhgCIAEoCzImLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use denomOwnerDescriptor instead')
const DenomOwner$json = const {
  '1': 'DenomOwner',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': const {}, '10': 'balance'},
  ],
};

/// Descriptor for `DenomOwner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List denomOwnerDescriptor = $convert.base64Decode('CgpEZW5vbU93bmVyEhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSOQoHYmFsYW5jZRgCIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkIEyN4fAFIHYmFsYW5jZQ==');
@$core.Deprecated('Use queryDenomOwnersResponseDescriptor instead')
const QueryDenomOwnersResponse$json = const {
  '1': 'QueryDenomOwnersResponse',
  '2': const [
    const {'1': 'denom_owners', '3': 1, '4': 3, '5': 11, '6': '.cosmos.bank.v1beta1.DenomOwner', '10': 'denomOwners'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryDenomOwnersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDenomOwnersResponseDescriptor = $convert.base64Decode('ChhRdWVyeURlbm9tT3duZXJzUmVzcG9uc2USQgoMZGVub21fb3duZXJzGAEgAygLMh8uY29zbW9zLmJhbmsudjFiZXRhMS5EZW5vbU93bmVyUgtkZW5vbU93bmVycxJHCgpwYWdpbmF0aW9uGAIgASgLMicuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVzcG9uc2VSCnBhZ2luYXRpb24=');
const $core.Map<$core.String, $core.dynamic> QueryServiceBase$json = const {
  '1': 'Query',
  '2': const [
    const {'1': 'Balance', '2': '.cosmos.bank.v1beta1.QueryBalanceRequest', '3': '.cosmos.bank.v1beta1.QueryBalanceResponse', '4': const {}},
    const {'1': 'AllBalances', '2': '.cosmos.bank.v1beta1.QueryAllBalancesRequest', '3': '.cosmos.bank.v1beta1.QueryAllBalancesResponse', '4': const {}},
    const {'1': 'TotalSupply', '2': '.cosmos.bank.v1beta1.QueryTotalSupplyRequest', '3': '.cosmos.bank.v1beta1.QueryTotalSupplyResponse', '4': const {}},
    const {'1': 'SupplyOf', '2': '.cosmos.bank.v1beta1.QuerySupplyOfRequest', '3': '.cosmos.bank.v1beta1.QuerySupplyOfResponse', '4': const {}},
    const {'1': 'Params', '2': '.cosmos.bank.v1beta1.QueryParamsRequest', '3': '.cosmos.bank.v1beta1.QueryParamsResponse', '4': const {}},
    const {'1': 'DenomMetadata', '2': '.cosmos.bank.v1beta1.QueryDenomMetadataRequest', '3': '.cosmos.bank.v1beta1.QueryDenomMetadataResponse', '4': const {}},
    const {'1': 'DenomsMetadata', '2': '.cosmos.bank.v1beta1.QueryDenomsMetadataRequest', '3': '.cosmos.bank.v1beta1.QueryDenomsMetadataResponse', '4': const {}},
    const {'1': 'DenomOwners', '2': '.cosmos.bank.v1beta1.QueryDenomOwnersRequest', '3': '.cosmos.bank.v1beta1.QueryDenomOwnersResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use queryServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> QueryServiceBase$messageJson = const {
  '.cosmos.bank.v1beta1.QueryBalanceRequest': QueryBalanceRequest$json,
  '.cosmos.bank.v1beta1.QueryBalanceResponse': QueryBalanceResponse$json,
  '.cosmos.base.v1beta1.Coin': $0.Coin$json,
  '.cosmos.bank.v1beta1.QueryAllBalancesRequest': QueryAllBalancesRequest$json,
  '.cosmos.base.query.v1beta1.PageRequest': $1.PageRequest$json,
  '.cosmos.bank.v1beta1.QueryAllBalancesResponse': QueryAllBalancesResponse$json,
  '.cosmos.base.query.v1beta1.PageResponse': $1.PageResponse$json,
  '.cosmos.bank.v1beta1.QueryTotalSupplyRequest': QueryTotalSupplyRequest$json,
  '.cosmos.bank.v1beta1.QueryTotalSupplyResponse': QueryTotalSupplyResponse$json,
  '.cosmos.bank.v1beta1.QuerySupplyOfRequest': QuerySupplyOfRequest$json,
  '.cosmos.bank.v1beta1.QuerySupplyOfResponse': QuerySupplyOfResponse$json,
  '.cosmos.bank.v1beta1.QueryParamsRequest': QueryParamsRequest$json,
  '.cosmos.bank.v1beta1.QueryParamsResponse': QueryParamsResponse$json,
  '.cosmos.bank.v1beta1.Params': $2.Params$json,
  '.cosmos.bank.v1beta1.SendEnabled': $2.SendEnabled$json,
  '.cosmos.bank.v1beta1.QueryDenomMetadataRequest': QueryDenomMetadataRequest$json,
  '.cosmos.bank.v1beta1.QueryDenomMetadataResponse': QueryDenomMetadataResponse$json,
  '.cosmos.bank.v1beta1.Metadata': $2.Metadata$json,
  '.cosmos.bank.v1beta1.DenomUnit': $2.DenomUnit$json,
  '.cosmos.bank.v1beta1.QueryDenomsMetadataRequest': QueryDenomsMetadataRequest$json,
  '.cosmos.bank.v1beta1.QueryDenomsMetadataResponse': QueryDenomsMetadataResponse$json,
  '.cosmos.bank.v1beta1.QueryDenomOwnersRequest': QueryDenomOwnersRequest$json,
  '.cosmos.bank.v1beta1.QueryDenomOwnersResponse': QueryDenomOwnersResponse$json,
  '.cosmos.bank.v1beta1.DenomOwner': DenomOwner$json,
};

/// Descriptor for `Query`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List queryServiceDescriptor = $convert.base64Decode('CgVRdWVyeRKXAQoHQmFsYW5jZRIoLmNvc21vcy5iYW5rLnYxYmV0YTEuUXVlcnlCYWxhbmNlUmVxdWVzdBopLmNvc21vcy5iYW5rLnYxYmV0YTEuUXVlcnlCYWxhbmNlUmVzcG9uc2UiN4LT5JMCMRIvL2Nvc21vcy9iYW5rL3YxYmV0YTEvYmFsYW5jZXMve2FkZHJlc3N9L3tkZW5vbX0SmwEKC0FsbEJhbGFuY2VzEiwuY29zbW9zLmJhbmsudjFiZXRhMS5RdWVyeUFsbEJhbGFuY2VzUmVxdWVzdBotLmNvc21vcy5iYW5rLnYxYmV0YTEuUXVlcnlBbGxCYWxhbmNlc1Jlc3BvbnNlIi+C0+STAikSJy9jb3Ntb3MvYmFuay92MWJldGExL2JhbGFuY2VzL3thZGRyZXNzfRKPAQoLVG90YWxTdXBwbHkSLC5jb3Ntb3MuYmFuay52MWJldGExLlF1ZXJ5VG90YWxTdXBwbHlSZXF1ZXN0Gi0uY29zbW9zLmJhbmsudjFiZXRhMS5RdWVyeVRvdGFsU3VwcGx5UmVzcG9uc2UiI4LT5JMCHRIbL2Nvc21vcy9iYW5rL3YxYmV0YTEvc3VwcGx5Eo4BCghTdXBwbHlPZhIpLmNvc21vcy5iYW5rLnYxYmV0YTEuUXVlcnlTdXBwbHlPZlJlcXVlc3QaKi5jb3Ntb3MuYmFuay52MWJldGExLlF1ZXJ5U3VwcGx5T2ZSZXNwb25zZSIrgtPkkwIlEiMvY29zbW9zL2JhbmsvdjFiZXRhMS9zdXBwbHkve2Rlbm9tfRKAAQoGUGFyYW1zEicuY29zbW9zLmJhbmsudjFiZXRhMS5RdWVyeVBhcmFtc1JlcXVlc3QaKC5jb3Ntb3MuYmFuay52MWJldGExLlF1ZXJ5UGFyYW1zUmVzcG9uc2UiI4LT5JMCHRIbL2Nvc21vcy9iYW5rL3YxYmV0YTEvcGFyYW1zEqYBCg1EZW5vbU1ldGFkYXRhEi4uY29zbW9zLmJhbmsudjFiZXRhMS5RdWVyeURlbm9tTWV0YWRhdGFSZXF1ZXN0Gi8uY29zbW9zLmJhbmsudjFiZXRhMS5RdWVyeURlbm9tTWV0YWRhdGFSZXNwb25zZSI0gtPkkwIuEiwvY29zbW9zL2JhbmsvdjFiZXRhMS9kZW5vbXNfbWV0YWRhdGEve2Rlbm9tfRKhAQoORGVub21zTWV0YWRhdGESLy5jb3Ntb3MuYmFuay52MWJldGExLlF1ZXJ5RGVub21zTWV0YWRhdGFSZXF1ZXN0GjAuY29zbW9zLmJhbmsudjFiZXRhMS5RdWVyeURlbm9tc01ldGFkYXRhUmVzcG9uc2UiLILT5JMCJhIkL2Nvc21vcy9iYW5rL3YxYmV0YTEvZGVub21zX21ldGFkYXRhEp0BCgtEZW5vbU93bmVycxIsLmNvc21vcy5iYW5rLnYxYmV0YTEuUXVlcnlEZW5vbU93bmVyc1JlcXVlc3QaLS5jb3Ntb3MuYmFuay52MWJldGExLlF1ZXJ5RGVub21Pd25lcnNSZXNwb25zZSIxgtPkkwIrEikvY29zbW9zL2JhbmsvdjFiZXRhMS9kZW5vbV9vd25lcnMve2Rlbm9tfQ==');
