///
//  Generated code. Do not modify.
//  source: credimint/credimint/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgRequestLoanDescriptor instead')
const MsgRequestLoan$json = const {
  '1': 'MsgRequestLoan',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'fee', '3': 3, '4': 1, '5': 9, '10': 'fee'},
    const {'1': 'collateral', '3': 4, '4': 1, '5': 9, '10': 'collateral'},
    const {'1': 'deadline', '3': 5, '4': 1, '5': 9, '10': 'deadline'},
  ],
};

/// Descriptor for `MsgRequestLoan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRequestLoanDescriptor = $convert.base64Decode('Cg5Nc2dSZXF1ZXN0TG9hbhIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhYKBmFtb3VudBgCIAEoCVIGYW1vdW50EhAKA2ZlZRgDIAEoCVIDZmVlEh4KCmNvbGxhdGVyYWwYBCABKAlSCmNvbGxhdGVyYWwSGgoIZGVhZGxpbmUYBSABKAlSCGRlYWRsaW5l');
@$core.Deprecated('Use msgRequestLoanResponseDescriptor instead')
const MsgRequestLoanResponse$json = const {
  '1': 'MsgRequestLoanResponse',
};

/// Descriptor for `MsgRequestLoanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRequestLoanResponseDescriptor = $convert.base64Decode('ChZNc2dSZXF1ZXN0TG9hblJlc3BvbnNl');
@$core.Deprecated('Use msgApproveLoanDescriptor instead')
const MsgApproveLoan$json = const {
  '1': 'MsgApproveLoan',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `MsgApproveLoan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgApproveLoanDescriptor = $convert.base64Decode('Cg5Nc2dBcHByb3ZlTG9hbhIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEg4KAmlkGAIgASgEUgJpZA==');
@$core.Deprecated('Use msgApproveLoanResponseDescriptor instead')
const MsgApproveLoanResponse$json = const {
  '1': 'MsgApproveLoanResponse',
};

/// Descriptor for `MsgApproveLoanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgApproveLoanResponseDescriptor = $convert.base64Decode('ChZNc2dBcHByb3ZlTG9hblJlc3BvbnNl');
@$core.Deprecated('Use msgRepayLoanDescriptor instead')
const MsgRepayLoan$json = const {
  '1': 'MsgRepayLoan',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'repayTime', '3': 3, '4': 1, '5': 9, '10': 'repayTime'},
  ],
};

/// Descriptor for `MsgRepayLoan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRepayLoanDescriptor = $convert.base64Decode('CgxNc2dSZXBheUxvYW4SGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIOCgJpZBgCIAEoBFICaWQSHAoJcmVwYXlUaW1lGAMgASgJUglyZXBheVRpbWU=');
@$core.Deprecated('Use msgRepayLoanResponseDescriptor instead')
const MsgRepayLoanResponse$json = const {
  '1': 'MsgRepayLoanResponse',
};

/// Descriptor for `MsgRepayLoanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRepayLoanResponseDescriptor = $convert.base64Decode('ChRNc2dSZXBheUxvYW5SZXNwb25zZQ==');
@$core.Deprecated('Use msgLiquidateLoanDescriptor instead')
const MsgLiquidateLoan$json = const {
  '1': 'MsgLiquidateLoan',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'liquidationTime', '3': 3, '4': 1, '5': 9, '10': 'liquidationTime'},
  ],
};

/// Descriptor for `MsgLiquidateLoan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgLiquidateLoanDescriptor = $convert.base64Decode('ChBNc2dMaXF1aWRhdGVMb2FuEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISDgoCaWQYAiABKARSAmlkEigKD2xpcXVpZGF0aW9uVGltZRgDIAEoCVIPbGlxdWlkYXRpb25UaW1l');
@$core.Deprecated('Use msgLiquidateLoanResponseDescriptor instead')
const MsgLiquidateLoanResponse$json = const {
  '1': 'MsgLiquidateLoanResponse',
};

/// Descriptor for `MsgLiquidateLoanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgLiquidateLoanResponseDescriptor = $convert.base64Decode('ChhNc2dMaXF1aWRhdGVMb2FuUmVzcG9uc2U=');
