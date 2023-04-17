///
//  Generated code. Do not modify.
//  source: credimint/credimint/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $2;
import 'loan.pb.dart' as $3;
import 'user.pb.dart' as $4;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Params.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'portId')
    ..pc<$3.Loan>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loanList', $pb.PbFieldType.PM, protoName: 'loanList', subBuilder: $3.Loan.create)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loanCount', $pb.PbFieldType.OU6, protoName: 'loanCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$4.User>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userList', $pb.PbFieldType.PM, protoName: 'userList', subBuilder: $4.User.create)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $2.Params? params,
    $core.String? portId,
    $core.Iterable<$3.Loan>? loanList,
    $fixnum.Int64? loanCount,
    $core.Iterable<$4.User>? userList,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    if (portId != null) {
      _result.portId = portId;
    }
    if (loanList != null) {
      _result.loanList.addAll(loanList);
    }
    if (loanCount != null) {
      _result.loanCount = loanCount;
    }
    if (userList != null) {
      _result.userList.addAll(userList);
    }
    return _result;
  }
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($2.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $2.Params ensureParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get portId => $_getSZ(1);
  @$pb.TagNumber(2)
  set portId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPortId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPortId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$3.Loan> get loanList => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get loanCount => $_getI64(3);
  @$pb.TagNumber(4)
  set loanCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLoanCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoanCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$4.User> get userList => $_getList(4);
}

