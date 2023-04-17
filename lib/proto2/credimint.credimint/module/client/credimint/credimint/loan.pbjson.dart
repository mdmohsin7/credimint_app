///
//  Generated code. Do not modify.
//  source: credimint/credimint/loan.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loanDescriptor instead')
const Loan$json = const {
  '1': 'Loan',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'amoount', '3': 2, '4': 1, '5': 9, '10': 'amoount'},
    const {'1': 'fee', '3': 3, '4': 1, '5': 9, '10': 'fee'},
    const {'1': 'collateral', '3': 4, '4': 1, '5': 9, '10': 'collateral'},
    const {'1': 'deadline', '3': 5, '4': 1, '5': 9, '10': 'deadline'},
    const {'1': 'state', '3': 6, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'borrower', '3': 7, '4': 1, '5': 9, '10': 'borrower'},
    const {'1': 'lender', '3': 8, '4': 1, '5': 9, '10': 'lender'},
    const {'1': 'riskLevel', '3': 9, '4': 1, '5': 9, '10': 'riskLevel'},
    const {'1': 'borrowerScore', '3': 10, '4': 1, '5': 9, '10': 'borrowerScore'},
    const {'1': 'lenderScore', '3': 11, '4': 1, '5': 9, '10': 'lenderScore'},
  ],
};

/// Descriptor for `Loan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loanDescriptor = $convert.base64Decode('CgRMb2FuEg4KAmlkGAEgASgEUgJpZBIYCgdhbW9vdW50GAIgASgJUgdhbW9vdW50EhAKA2ZlZRgDIAEoCVIDZmVlEh4KCmNvbGxhdGVyYWwYBCABKAlSCmNvbGxhdGVyYWwSGgoIZGVhZGxpbmUYBSABKAlSCGRlYWRsaW5lEhQKBXN0YXRlGAYgASgJUgVzdGF0ZRIaCghib3Jyb3dlchgHIAEoCVIIYm9ycm93ZXISFgoGbGVuZGVyGAggASgJUgZsZW5kZXISHAoJcmlza0xldmVsGAkgASgJUglyaXNrTGV2ZWwSJAoNYm9ycm93ZXJTY29yZRgKIAEoCVINYm9ycm93ZXJTY29yZRIgCgtsZW5kZXJTY29yZRgLIAEoCVILbGVuZGVyU2NvcmU=');
