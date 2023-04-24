///
//  Generated code. Do not modify.
//  source: credimint/lqs/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgLiquidDescriptor instead')
const MsgLiquid$json = const {
  '1': 'MsgLiquid',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'validator', '3': 3, '4': 1, '5': 9, '10': 'validator'},
  ],
};

/// Descriptor for `MsgLiquid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgLiquidDescriptor = $convert.base64Decode('CglNc2dMaXF1aWQSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIWCgZhbW91bnQYAiABKAlSBmFtb3VudBIcCgl2YWxpZGF0b3IYAyABKAlSCXZhbGlkYXRvcg==');
@$core.Deprecated('Use msgLiquidResponseDescriptor instead')
const MsgLiquidResponse$json = const {
  '1': 'MsgLiquidResponse',
};

/// Descriptor for `MsgLiquidResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgLiquidResponseDescriptor = $convert.base64Decode('ChFNc2dMaXF1aWRSZXNwb25zZQ==');
