///
//  Generated code. Do not modify.
//  source: credimint/credimint/packet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use credimintPacketDataDescriptor instead')
const CredimintPacketData$json = const {
  '1': 'CredimintPacketData',
  '2': const [
    const {'1': 'noData', '3': 1, '4': 1, '5': 11, '6': '.credimint.credimint.NoData', '9': 0, '10': 'noData'},
  ],
  '8': const [
    const {'1': 'packet'},
  ],
};

/// Descriptor for `CredimintPacketData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List credimintPacketDataDescriptor = $convert.base64Decode('ChNDcmVkaW1pbnRQYWNrZXREYXRhEjUKBm5vRGF0YRgBIAEoCzIbLmNyZWRpbWludC5jcmVkaW1pbnQuTm9EYXRhSABSBm5vRGF0YUIICgZwYWNrZXQ=');
@$core.Deprecated('Use noDataDescriptor instead')
const NoData$json = const {
  '1': 'NoData',
};

/// Descriptor for `NoData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noDataDescriptor = $convert.base64Decode('CgZOb0RhdGE=');
