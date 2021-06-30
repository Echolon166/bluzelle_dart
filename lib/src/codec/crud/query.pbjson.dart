///
//  Generated code. Do not modify.
//  source: crud/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'Paging.pbjson.dart' as $2;
import 'KeyValue.pbjson.dart' as $3;

@$core.Deprecated('Use queryFileRequestDescriptor instead')
const QueryFileRequest$json = const {
  '1': 'QueryFileRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `QueryFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryFileRequestDescriptor = $convert.base64Decode('ChBRdWVyeUZpbGVSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQSEAoDa2V5GAIgASgJUgNrZXk=');
@$core.Deprecated('Use queryFileResponseDescriptor instead')
const QueryFileResponse$json = const {
  '1': 'QueryFileResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `QueryFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryFileResponseDescriptor = $convert.base64Decode('ChFRdWVyeUZpbGVSZXNwb25zZRISCgRkYXRhGAEgASgMUgRkYXRhEhIKBHV1aWQYAiABKAlSBHV1aWQSEAoDa2V5GAMgASgJUgNrZXk=');
@$core.Deprecated('Use queryKeyValuesRequestDescriptor instead')
const QueryKeyValuesRequest$json = const {
  '1': 'QueryKeyValuesRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryKeyValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryKeyValuesRequestDescriptor = $convert.base64Decode('ChVRdWVyeUtleVZhbHVlc1JlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZBJDCgpwYWdpbmF0aW9uGAIgASgLMiMuYmx1emVsbGUuY3VyaXVtLmNydWQuUGFnaW5nUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryKeyValuesResponseDescriptor instead')
const QueryKeyValuesResponse$json = const {
  '1': 'QueryKeyValuesResponse',
  '2': const [
    const {'1': 'keyValues', '3': 1, '4': 3, '5': 11, '6': '.bluzelle.curium.crud.KeyValue', '10': 'keyValues'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryKeyValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryKeyValuesResponseDescriptor = $convert.base64Decode('ChZRdWVyeUtleVZhbHVlc1Jlc3BvbnNlEjwKCWtleVZhbHVlcxgBIAMoCzIeLmJsdXplbGxlLmN1cml1bS5jcnVkLktleVZhbHVlUglrZXlWYWx1ZXMSRAoKcGFnaW5hdGlvbhgCIAEoCzIkLmJsdXplbGxlLmN1cml1bS5jcnVkLlBhZ2luZ1Jlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryReadRequestDescriptor instead')
const QueryReadRequest$json = const {
  '1': 'QueryReadRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `QueryReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryReadRequestDescriptor = $convert.base64Decode('ChBRdWVyeVJlYWRSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQSEAoDa2V5GAIgASgJUgNrZXk=');
@$core.Deprecated('Use queryReadResponseDescriptor instead')
const QueryReadResponse$json = const {
  '1': 'QueryReadResponse',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `QueryReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryReadResponseDescriptor = $convert.base64Decode('ChFRdWVyeVJlYWRSZXNwb25zZRIUCgV2YWx1ZRgBIAEoDFIFdmFsdWU=');
@$core.Deprecated('Use queryKeysRequestDescriptor instead')
const QueryKeysRequest$json = const {
  '1': 'QueryKeysRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryKeysRequestDescriptor = $convert.base64Decode('ChBRdWVyeUtleXNSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQSQwoKcGFnaW5hdGlvbhgCIAEoCzIjLmJsdXplbGxlLmN1cml1bS5jcnVkLlBhZ2luZ1JlcXVlc3RSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use queryKeysResponseDescriptor instead')
const QueryKeysResponse$json = const {
  '1': 'QueryKeysResponse',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 9, '10': 'keys'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryKeysResponseDescriptor = $convert.base64Decode('ChFRdWVyeUtleXNSZXNwb25zZRISCgRrZXlzGAEgAygJUgRrZXlzEkQKCnBhZ2luYXRpb24YAiABKAsyJC5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5QYWdpbmdSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryMyKeysRequestDescriptor instead')
const QueryMyKeysRequest$json = const {
  '1': 'QueryMyKeysRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'pagination', '3': 3, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryMyKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMyKeysRequestDescriptor = $convert.base64Decode('ChJRdWVyeU15S2V5c1JlcXVlc3QSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxISCgR1dWlkGAIgASgJUgR1dWlkEkMKCnBhZ2luYXRpb24YAyABKAsyIy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5QYWdpbmdSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryMyKeysResponseDescriptor instead')
const QueryMyKeysResponse$json = const {
  '1': 'QueryMyKeysResponse',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 9, '10': 'keys'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryMyKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMyKeysResponseDescriptor = $convert.base64Decode('ChNRdWVyeU15S2V5c1Jlc3BvbnNlEhIKBGtleXMYASADKAlSBGtleXMSRAoKcGFnaW5hdGlvbhgCIAEoCzIkLmJsdXplbGxlLmN1cml1bS5jcnVkLlBhZ2luZ1Jlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryCountRequestDescriptor instead')
const QueryCountRequest$json = const {
  '1': 'QueryCountRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `QueryCountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCountRequestDescriptor = $convert.base64Decode('ChFRdWVyeUNvdW50UmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlk');
@$core.Deprecated('Use queryCountResponseDescriptor instead')
const QueryCountResponse$json = const {
  '1': 'QueryCountResponse',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'count', '3': 2, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `QueryCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCountResponseDescriptor = $convert.base64Decode('ChJRdWVyeUNvdW50UmVzcG9uc2USEgoEdXVpZBgBIAEoCVIEdXVpZBIUCgVjb3VudBgCIAEoDVIFY291bnQ=');
@$core.Deprecated('Use queryHasRequestDescriptor instead')
const QueryHasRequest$json = const {
  '1': 'QueryHasRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `QueryHasRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryHasRequestDescriptor = $convert.base64Decode('Cg9RdWVyeUhhc1JlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZBIQCgNrZXkYAiABKAlSA2tleQ==');
@$core.Deprecated('Use queryHasResponseDescriptor instead')
const QueryHasResponse$json = const {
  '1': 'QueryHasResponse',
  '2': const [
    const {'1': 'has', '3': 1, '4': 1, '5': 8, '10': 'has'},
  ],
};

/// Descriptor for `QueryHasResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryHasResponseDescriptor = $convert.base64Decode('ChBRdWVyeUhhc1Jlc3BvbnNlEhAKA2hhcxgBIAEoCFIDaGFz');
@$core.Deprecated('Use querySearchRequestDescriptor instead')
const QuerySearchRequest$json = const {
  '1': 'QuerySearchRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'searchString', '3': 2, '4': 1, '5': 9, '10': 'searchString'},
    const {'1': 'pagination', '3': 3, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QuerySearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List querySearchRequestDescriptor = $convert.base64Decode('ChJRdWVyeVNlYXJjaFJlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZBIiCgxzZWFyY2hTdHJpbmcYAiABKAlSDHNlYXJjaFN0cmluZxJDCgpwYWdpbmF0aW9uGAMgASgLMiMuYmx1emVsbGUuY3VyaXVtLmNydWQuUGFnaW5nUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use querySearchResponseDescriptor instead')
const QuerySearchResponse$json = const {
  '1': 'QuerySearchResponse',
  '2': const [
    const {'1': 'keyValues', '3': 1, '4': 3, '5': 11, '6': '.bluzelle.curium.crud.KeyValue', '10': 'keyValues'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.bluzelle.curium.crud.PagingResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QuerySearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List querySearchResponseDescriptor = $convert.base64Decode('ChNRdWVyeVNlYXJjaFJlc3BvbnNlEjwKCWtleVZhbHVlcxgBIAMoCzIeLmJsdXplbGxlLmN1cml1bS5jcnVkLktleVZhbHVlUglrZXlWYWx1ZXMSRAoKcGFnaW5hdGlvbhgCIAEoCzIkLmJsdXplbGxlLmN1cml1bS5jcnVkLlBhZ2luZ1Jlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryGetLeaseRequestDescriptor instead')
const QueryGetLeaseRequest$json = const {
  '1': 'QueryGetLeaseRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `QueryGetLeaseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetLeaseRequestDescriptor = $convert.base64Decode('ChRRdWVyeUdldExlYXNlUmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlkEhAKA2tleRgCIAEoCVIDa2V5');
@$core.Deprecated('Use queryGetLeaseResponseDescriptor instead')
const QueryGetLeaseResponse$json = const {
  '1': 'QueryGetLeaseResponse',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'seconds', '3': 3, '4': 1, '5': 13, '10': 'seconds'},
  ],
};

/// Descriptor for `QueryGetLeaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetLeaseResponseDescriptor = $convert.base64Decode('ChVRdWVyeUdldExlYXNlUmVzcG9uc2USEgoEdXVpZBgBIAEoCVIEdXVpZBIQCgNrZXkYAiABKAlSA2tleRIYCgdzZWNvbmRzGAMgASgNUgdzZWNvbmRz');
@$core.Deprecated('Use queryGetNShortestLeasesRequestDescriptor instead')
const QueryGetNShortestLeasesRequest$json = const {
  '1': 'QueryGetNShortestLeasesRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'num', '3': 2, '4': 1, '5': 13, '10': 'num'},
  ],
};

/// Descriptor for `QueryGetNShortestLeasesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetNShortestLeasesRequestDescriptor = $convert.base64Decode('Ch5RdWVyeUdldE5TaG9ydGVzdExlYXNlc1JlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZBIQCgNudW0YAiABKA1SA251bQ==');
@$core.Deprecated('Use queryGetNShortestLeasesResponseDescriptor instead')
const QueryGetNShortestLeasesResponse$json = const {
  '1': 'QueryGetNShortestLeasesResponse',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'keyLeases', '3': 2, '4': 3, '5': 11, '6': '.bluzelle.curium.crud.KeyLease', '10': 'keyLeases'},
  ],
};

/// Descriptor for `QueryGetNShortestLeasesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetNShortestLeasesResponseDescriptor = $convert.base64Decode('Ch9RdWVyeUdldE5TaG9ydGVzdExlYXNlc1Jlc3BvbnNlEhIKBHV1aWQYASABKAlSBHV1aWQSPAoJa2V5TGVhc2VzGAIgAygLMh4uYmx1emVsbGUuY3VyaXVtLmNydWQuS2V5TGVhc2VSCWtleUxlYXNlcw==');
const $core.Map<$core.String, $core.dynamic> QueryServiceBase$json = const {
  '1': 'Query',
  '2': const [
    const {'1': 'Read', '2': '.bluzelle.curium.crud.QueryReadRequest', '3': '.bluzelle.curium.crud.QueryReadResponse', '4': const {}},
    const {'1': 'Keys', '2': '.bluzelle.curium.crud.QueryKeysRequest', '3': '.bluzelle.curium.crud.QueryKeysResponse', '4': const {}},
    const {'1': 'MyKeys', '2': '.bluzelle.curium.crud.QueryMyKeysRequest', '3': '.bluzelle.curium.crud.QueryMyKeysResponse', '4': const {}},
    const {'1': 'Count', '2': '.bluzelle.curium.crud.QueryCountRequest', '3': '.bluzelle.curium.crud.QueryCountResponse', '4': const {}},
    const {'1': 'Has', '2': '.bluzelle.curium.crud.QueryHasRequest', '3': '.bluzelle.curium.crud.QueryHasResponse', '4': const {}},
    const {'1': 'Search', '2': '.bluzelle.curium.crud.QuerySearchRequest', '3': '.bluzelle.curium.crud.QuerySearchResponse', '4': const {}},
    const {'1': 'GetNShortestLeases', '2': '.bluzelle.curium.crud.QueryGetNShortestLeasesRequest', '3': '.bluzelle.curium.crud.QueryGetNShortestLeasesResponse', '4': const {}},
    const {'1': 'GetLease', '2': '.bluzelle.curium.crud.QueryGetLeaseRequest', '3': '.bluzelle.curium.crud.QueryGetLeaseResponse', '4': const {}},
    const {'1': 'KeyValues', '2': '.bluzelle.curium.crud.QueryKeyValuesRequest', '3': '.bluzelle.curium.crud.QueryKeyValuesResponse', '4': const {}},
    const {'1': 'File', '2': '.bluzelle.curium.crud.QueryFileRequest', '3': '.bluzelle.curium.crud.QueryFileResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use queryServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> QueryServiceBase$messageJson = const {
  '.bluzelle.curium.crud.QueryReadRequest': QueryReadRequest$json,
  '.bluzelle.curium.crud.QueryReadResponse': QueryReadResponse$json,
  '.bluzelle.curium.crud.QueryKeysRequest': QueryKeysRequest$json,
  '.bluzelle.curium.crud.PagingRequest': $2.PagingRequest$json,
  '.bluzelle.curium.crud.QueryKeysResponse': QueryKeysResponse$json,
  '.bluzelle.curium.crud.PagingResponse': $2.PagingResponse$json,
  '.bluzelle.curium.crud.QueryMyKeysRequest': QueryMyKeysRequest$json,
  '.bluzelle.curium.crud.QueryMyKeysResponse': QueryMyKeysResponse$json,
  '.bluzelle.curium.crud.QueryCountRequest': QueryCountRequest$json,
  '.bluzelle.curium.crud.QueryCountResponse': QueryCountResponse$json,
  '.bluzelle.curium.crud.QueryHasRequest': QueryHasRequest$json,
  '.bluzelle.curium.crud.QueryHasResponse': QueryHasResponse$json,
  '.bluzelle.curium.crud.QuerySearchRequest': QuerySearchRequest$json,
  '.bluzelle.curium.crud.QuerySearchResponse': QuerySearchResponse$json,
  '.bluzelle.curium.crud.KeyValue': $3.KeyValue$json,
  '.bluzelle.curium.crud.QueryGetNShortestLeasesRequest': QueryGetNShortestLeasesRequest$json,
  '.bluzelle.curium.crud.QueryGetNShortestLeasesResponse': QueryGetNShortestLeasesResponse$json,
  '.bluzelle.curium.crud.KeyLease': $3.KeyLease$json,
  '.bluzelle.curium.crud.QueryGetLeaseRequest': QueryGetLeaseRequest$json,
  '.bluzelle.curium.crud.QueryGetLeaseResponse': QueryGetLeaseResponse$json,
  '.bluzelle.curium.crud.QueryKeyValuesRequest': QueryKeyValuesRequest$json,
  '.bluzelle.curium.crud.QueryKeyValuesResponse': QueryKeyValuesResponse$json,
  '.bluzelle.curium.crud.QueryFileRequest': QueryFileRequest$json,
  '.bluzelle.curium.crud.QueryFileResponse': QueryFileResponse$json,
};

/// Descriptor for `Query`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List queryServiceDescriptor = $convert.base64Decode('CgVRdWVyeRKIAQoEUmVhZBImLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5UmVhZFJlcXVlc3QaJy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5RdWVyeVJlYWRSZXNwb25zZSIvgtPkkwIpEicvYmx1emVsbGUvY3VyaXVtL2NydWQvUmVhZC97dXVpZH0ve2tleX0SggEKBEtleXMSJi5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5RdWVyeUtleXNSZXF1ZXN0GicuYmx1emVsbGUuY3VyaXVtLmNydWQuUXVlcnlLZXlzUmVzcG9uc2UiKYLT5JMCIxIhL2JsdXplbGxlL2N1cml1bS9jcnVkL0tleXMve3V1aWR9Eo0BCgZNeUtleXMSKC5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5RdWVyeU15S2V5c1JlcXVlc3QaKS5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5RdWVyeU15S2V5c1Jlc3BvbnNlIi6C0+STAigSJi9ibHV6ZWxsZS9jdXJpdW0vY3J1ZC9NeUtleXMve2FkZHJlc3N9EoYBCgVDb3VudBInLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5Q291bnRSZXF1ZXN0GiguYmx1emVsbGUuY3VyaXVtLmNydWQuUXVlcnlDb3VudFJlc3BvbnNlIiqC0+STAiQSIi9ibHV6ZWxsZS9jdXJpdW0vY3J1ZC9Db3VudC97dXVpZH0ShAEKA0hhcxIlLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5SGFzUmVxdWVzdBomLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5SGFzUmVzcG9uc2UiLoLT5JMCKBImL2JsdXplbGxlL2N1cml1bS9jcnVkL0hhcy97dXVpZH0ve2tleX0SmQEKBlNlYXJjaBIoLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5U2VhcmNoUmVxdWVzdBopLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5U2VhcmNoUmVzcG9uc2UiOoLT5JMCNBIyL2JsdXplbGxlL2N1cml1bS9jcnVkL3NlYXJjaC97dXVpZH0ve3NlYXJjaFN0cmluZ30SwAEKEkdldE5TaG9ydGVzdExlYXNlcxI0LmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5R2V0TlNob3J0ZXN0TGVhc2VzUmVxdWVzdBo1LmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5R2V0TlNob3J0ZXN0TGVhc2VzUmVzcG9uc2UiPYLT5JMCNxI1L2JsdXplbGxlL2N1cml1bS9jcnVkL0dldE5TaG9ydGVzdExlYXNlcy97dXVpZH0ve251bX0SmAEKCEdldExlYXNlEiouYmx1emVsbGUuY3VyaXVtLmNydWQuUXVlcnlHZXRMZWFzZVJlcXVlc3QaKy5ibHV6ZWxsZS5jdXJpdW0uY3J1ZC5RdWVyeUdldExlYXNlUmVzcG9uc2UiM4LT5JMCLRIrL2JsdXplbGxlL2N1cml1bS9jcnVkL0dldExlYXNlL3t1dWlkfS97a2V5fRKWAQoJS2V5VmFsdWVzEisuYmx1emVsbGUuY3VyaXVtLmNydWQuUXVlcnlLZXlWYWx1ZXNSZXF1ZXN0GiwuYmx1emVsbGUuY3VyaXVtLmNydWQuUXVlcnlLZXlWYWx1ZXNSZXNwb25zZSIugtPkkwIoEiYvYmx1emVsbGUvY3VyaXVtL2NydWQvS2V5VmFsdWVzL3t1dWlkfRJZCgRGaWxlEiYuYmx1emVsbGUuY3VyaXVtLmNydWQuUXVlcnlGaWxlUmVxdWVzdBonLmJsdXplbGxlLmN1cml1bS5jcnVkLlF1ZXJ5RmlsZVJlc3BvbnNlIgA=');
