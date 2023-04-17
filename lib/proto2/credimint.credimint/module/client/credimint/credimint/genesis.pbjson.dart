///
//  Generated code. Do not modify.
//  source: credimint/credimint/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = const {
  '1': 'GenesisState',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.credimint.credimint.Params', '8': const {}, '10': 'params'},
    const {'1': 'port_id', '3': 2, '4': 1, '5': 9, '10': 'portId'},
    const {'1': 'loanList', '3': 3, '4': 3, '5': 11, '6': '.credimint.credimint.Loan', '8': const {}, '10': 'loanList'},
    const {'1': 'loanCount', '3': 4, '4': 1, '5': 4, '10': 'loanCount'},
    const {'1': 'userList', '3': 5, '4': 3, '5': 11, '6': '.credimint.credimint.User', '8': const {}, '10': 'userList'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode('CgxHZW5lc2lzU3RhdGUSOQoGcGFyYW1zGAEgASgLMhsuY3JlZGltaW50LmNyZWRpbWludC5QYXJhbXNCBMjeHwBSBnBhcmFtcxIXCgdwb3J0X2lkGAIgASgJUgZwb3J0SWQSOwoIbG9hbkxpc3QYAyADKAsyGS5jcmVkaW1pbnQuY3JlZGltaW50LkxvYW5CBMjeHwBSCGxvYW5MaXN0EhwKCWxvYW5Db3VudBgEIAEoBFIJbG9hbkNvdW50EjsKCHVzZXJMaXN0GAUgAygLMhkuY3JlZGltaW50LmNyZWRpbWludC5Vc2VyQgTI3h8AUgh1c2VyTGlzdA==');
