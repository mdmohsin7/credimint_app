///
//  Generated code. Do not modify.
//  source: credimint/credimint/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.credimint.credimint.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjkKBnBhcmFtcxgBIAEoCzIbLmNyZWRpbWludC5jcmVkaW1pbnQuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
@$core.Deprecated('Use queryGetLoanRequestDescriptor instead')
const QueryGetLoanRequest$json = const {
  '1': 'QueryGetLoanRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `QueryGetLoanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetLoanRequestDescriptor = $convert.base64Decode('ChNRdWVyeUdldExvYW5SZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZA==');
@$core.Deprecated('Use queryGetLoanResponseDescriptor instead')
const QueryGetLoanResponse$json = const {
  '1': 'QueryGetLoanResponse',
  '2': const [
    const {'1': 'Loan', '3': 1, '4': 1, '5': 11, '6': '.credimint.credimint.Loan', '8': const {}, '10': 'Loan'},
  ],
};

/// Descriptor for `QueryGetLoanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetLoanResponseDescriptor = $convert.base64Decode('ChRRdWVyeUdldExvYW5SZXNwb25zZRIzCgRMb2FuGAEgASgLMhkuY3JlZGltaW50LmNyZWRpbWludC5Mb2FuQgTI3h8AUgRMb2Fu');
@$core.Deprecated('Use queryAllLoanRequestDescriptor instead')
const QueryAllLoanRequest$json = const {
  '1': 'QueryAllLoanRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllLoanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllLoanRequestDescriptor = $convert.base64Decode('ChNRdWVyeUFsbExvYW5SZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryAllLoanResponseDescriptor instead')
const QueryAllLoanResponse$json = const {
  '1': 'QueryAllLoanResponse',
  '2': const [
    const {'1': 'Loan', '3': 1, '4': 3, '5': 11, '6': '.credimint.credimint.Loan', '8': const {}, '10': 'Loan'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllLoanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllLoanResponseDescriptor = $convert.base64Decode('ChRRdWVyeUFsbExvYW5SZXNwb25zZRIzCgRMb2FuGAEgAygLMhkuY3JlZGltaW50LmNyZWRpbWludC5Mb2FuQgTI3h8AUgRMb2FuEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryGetUserRequestDescriptor instead')
const QueryGetUserRequest$json = const {
  '1': 'QueryGetUserRequest',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 9, '10': 'index'},
  ],
};

/// Descriptor for `QueryGetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetUserRequestDescriptor = $convert.base64Decode('ChNRdWVyeUdldFVzZXJSZXF1ZXN0EhQKBWluZGV4GAEgASgJUgVpbmRleA==');
@$core.Deprecated('Use queryGetUserResponseDescriptor instead')
const QueryGetUserResponse$json = const {
  '1': 'QueryGetUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.credimint.credimint.User', '8': const {}, '10': 'user'},
  ],
};

/// Descriptor for `QueryGetUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetUserResponseDescriptor = $convert.base64Decode('ChRRdWVyeUdldFVzZXJSZXNwb25zZRIzCgR1c2VyGAEgASgLMhkuY3JlZGltaW50LmNyZWRpbWludC5Vc2VyQgTI3h8AUgR1c2Vy');
@$core.Deprecated('Use queryAllUserRequestDescriptor instead')
const QueryAllUserRequest$json = const {
  '1': 'QueryAllUserRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllUserRequestDescriptor = $convert.base64Decode('ChNRdWVyeUFsbFVzZXJSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryAllUserResponseDescriptor instead')
const QueryAllUserResponse$json = const {
  '1': 'QueryAllUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 3, '5': 11, '6': '.credimint.credimint.User', '8': const {}, '10': 'user'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllUserResponseDescriptor = $convert.base64Decode('ChRRdWVyeUFsbFVzZXJSZXNwb25zZRIzCgR1c2VyGAEgAygLMhkuY3JlZGltaW50LmNyZWRpbWludC5Vc2VyQgTI3h8AUgR1c2VyEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
