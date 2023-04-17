///
//  Generated code. Do not modify.
//  source: credimint/credimint/user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 9, '10': 'index'},
    const {'1': 'creditScore', '3': 2, '4': 1, '5': 4, '10': 'creditScore'},
    const {'1': 'timelyPayments', '3': 3, '4': 1, '5': 4, '10': 'timelyPayments'},
    const {'1': 'defaultRate', '3': 4, '4': 1, '5': 9, '10': 'defaultRate'},
    const {'1': 'numberOfLoans', '3': 5, '4': 1, '5': 4, '10': 'numberOfLoans'},
    const {'1': 'loanDuration', '3': 6, '4': 1, '5': 4, '10': 'loanDuration'},
    const {'1': 'numberOfLoansFunded', '3': 7, '4': 1, '5': 4, '10': 'numberOfLoansFunded'},
    const {'1': 'loanFundedDuration', '3': 8, '4': 1, '5': 4, '10': 'loanFundedDuration'},
    const {'1': 'collateralPercent', '3': 9, '4': 1, '5': 9, '10': 'collateralPercent'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhQKBWluZGV4GAEgASgJUgVpbmRleBIgCgtjcmVkaXRTY29yZRgCIAEoBFILY3JlZGl0U2NvcmUSJgoOdGltZWx5UGF5bWVudHMYAyABKARSDnRpbWVseVBheW1lbnRzEiAKC2RlZmF1bHRSYXRlGAQgASgJUgtkZWZhdWx0UmF0ZRIkCg1udW1iZXJPZkxvYW5zGAUgASgEUg1udW1iZXJPZkxvYW5zEiIKDGxvYW5EdXJhdGlvbhgGIAEoBFIMbG9hbkR1cmF0aW9uEjAKE251bWJlck9mTG9hbnNGdW5kZWQYByABKARSE251bWJlck9mTG9hbnNGdW5kZWQSLgoSbG9hbkZ1bmRlZER1cmF0aW9uGAggASgEUhJsb2FuRnVuZGVkRHVyYXRpb24SLAoRY29sbGF0ZXJhbFBlcmNlbnQYCSABKAlSEWNvbGxhdGVyYWxQZXJjZW50');
