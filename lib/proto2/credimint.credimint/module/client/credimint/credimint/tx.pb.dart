///
//  Generated code. Do not modify.
//  source: credimint/credimint/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class MsgRequestLoan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRequestLoan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collateral')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deadline')
    ..hasRequiredFields = false
  ;

  MsgRequestLoan._() : super();
  factory MsgRequestLoan({
    $core.String? creator,
    $core.String? amount,
    $core.String? fee,
    $core.String? collateral,
    $core.String? deadline,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (collateral != null) {
      _result.collateral = collateral;
    }
    if (deadline != null) {
      _result.deadline = deadline;
    }
    return _result;
  }
  factory MsgRequestLoan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRequestLoan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRequestLoan clone() => MsgRequestLoan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRequestLoan copyWith(void Function(MsgRequestLoan) updates) => super.copyWith((message) => updates(message as MsgRequestLoan)) as MsgRequestLoan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRequestLoan create() => MsgRequestLoan._();
  MsgRequestLoan createEmptyInstance() => create();
  static $pb.PbList<MsgRequestLoan> createRepeated() => $pb.PbList<MsgRequestLoan>();
  @$core.pragma('dart2js:noInline')
  static MsgRequestLoan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRequestLoan>(create);
  static MsgRequestLoan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fee => $_getSZ(2);
  @$pb.TagNumber(3)
  set fee($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearFee() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get collateral => $_getSZ(3);
  @$pb.TagNumber(4)
  set collateral($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCollateral() => $_has(3);
  @$pb.TagNumber(4)
  void clearCollateral() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get deadline => $_getSZ(4);
  @$pb.TagNumber(5)
  set deadline($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeadline() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeadline() => clearField(5);
}

class MsgRequestLoanResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRequestLoanResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgRequestLoanResponse._() : super();
  factory MsgRequestLoanResponse() => create();
  factory MsgRequestLoanResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRequestLoanResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRequestLoanResponse clone() => MsgRequestLoanResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRequestLoanResponse copyWith(void Function(MsgRequestLoanResponse) updates) => super.copyWith((message) => updates(message as MsgRequestLoanResponse)) as MsgRequestLoanResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRequestLoanResponse create() => MsgRequestLoanResponse._();
  MsgRequestLoanResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRequestLoanResponse> createRepeated() => $pb.PbList<MsgRequestLoanResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRequestLoanResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRequestLoanResponse>(create);
  static MsgRequestLoanResponse? _defaultInstance;
}

class MsgApproveLoan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgApproveLoan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MsgApproveLoan._() : super();
  factory MsgApproveLoan({
    $core.String? creator,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory MsgApproveLoan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgApproveLoan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgApproveLoan clone() => MsgApproveLoan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgApproveLoan copyWith(void Function(MsgApproveLoan) updates) => super.copyWith((message) => updates(message as MsgApproveLoan)) as MsgApproveLoan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgApproveLoan create() => MsgApproveLoan._();
  MsgApproveLoan createEmptyInstance() => create();
  static $pb.PbList<MsgApproveLoan> createRepeated() => $pb.PbList<MsgApproveLoan>();
  @$core.pragma('dart2js:noInline')
  static MsgApproveLoan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgApproveLoan>(create);
  static MsgApproveLoan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class MsgApproveLoanResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgApproveLoanResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgApproveLoanResponse._() : super();
  factory MsgApproveLoanResponse() => create();
  factory MsgApproveLoanResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgApproveLoanResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgApproveLoanResponse clone() => MsgApproveLoanResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgApproveLoanResponse copyWith(void Function(MsgApproveLoanResponse) updates) => super.copyWith((message) => updates(message as MsgApproveLoanResponse)) as MsgApproveLoanResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgApproveLoanResponse create() => MsgApproveLoanResponse._();
  MsgApproveLoanResponse createEmptyInstance() => create();
  static $pb.PbList<MsgApproveLoanResponse> createRepeated() => $pb.PbList<MsgApproveLoanResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgApproveLoanResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgApproveLoanResponse>(create);
  static MsgApproveLoanResponse? _defaultInstance;
}

class MsgRepayLoan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRepayLoan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repayTime', protoName: 'repayTime')
    ..hasRequiredFields = false
  ;

  MsgRepayLoan._() : super();
  factory MsgRepayLoan({
    $core.String? creator,
    $fixnum.Int64? id,
    $core.String? repayTime,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (id != null) {
      _result.id = id;
    }
    if (repayTime != null) {
      _result.repayTime = repayTime;
    }
    return _result;
  }
  factory MsgRepayLoan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRepayLoan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRepayLoan clone() => MsgRepayLoan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRepayLoan copyWith(void Function(MsgRepayLoan) updates) => super.copyWith((message) => updates(message as MsgRepayLoan)) as MsgRepayLoan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRepayLoan create() => MsgRepayLoan._();
  MsgRepayLoan createEmptyInstance() => create();
  static $pb.PbList<MsgRepayLoan> createRepeated() => $pb.PbList<MsgRepayLoan>();
  @$core.pragma('dart2js:noInline')
  static MsgRepayLoan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRepayLoan>(create);
  static MsgRepayLoan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get repayTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set repayTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRepayTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRepayTime() => clearField(3);
}

class MsgRepayLoanResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgRepayLoanResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgRepayLoanResponse._() : super();
  factory MsgRepayLoanResponse() => create();
  factory MsgRepayLoanResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRepayLoanResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgRepayLoanResponse clone() => MsgRepayLoanResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgRepayLoanResponse copyWith(void Function(MsgRepayLoanResponse) updates) => super.copyWith((message) => updates(message as MsgRepayLoanResponse)) as MsgRepayLoanResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRepayLoanResponse create() => MsgRepayLoanResponse._();
  MsgRepayLoanResponse createEmptyInstance() => create();
  static $pb.PbList<MsgRepayLoanResponse> createRepeated() => $pb.PbList<MsgRepayLoanResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgRepayLoanResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRepayLoanResponse>(create);
  static MsgRepayLoanResponse? _defaultInstance;
}

class MsgLiquidateLoan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgLiquidateLoan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'liquidationTime', protoName: 'liquidationTime')
    ..hasRequiredFields = false
  ;

  MsgLiquidateLoan._() : super();
  factory MsgLiquidateLoan({
    $core.String? creator,
    $fixnum.Int64? id,
    $core.String? liquidationTime,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (id != null) {
      _result.id = id;
    }
    if (liquidationTime != null) {
      _result.liquidationTime = liquidationTime;
    }
    return _result;
  }
  factory MsgLiquidateLoan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgLiquidateLoan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgLiquidateLoan clone() => MsgLiquidateLoan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgLiquidateLoan copyWith(void Function(MsgLiquidateLoan) updates) => super.copyWith((message) => updates(message as MsgLiquidateLoan)) as MsgLiquidateLoan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgLiquidateLoan create() => MsgLiquidateLoan._();
  MsgLiquidateLoan createEmptyInstance() => create();
  static $pb.PbList<MsgLiquidateLoan> createRepeated() => $pb.PbList<MsgLiquidateLoan>();
  @$core.pragma('dart2js:noInline')
  static MsgLiquidateLoan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgLiquidateLoan>(create);
  static MsgLiquidateLoan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get liquidationTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set liquidationTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLiquidationTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLiquidationTime() => clearField(3);
}

class MsgLiquidateLoanResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgLiquidateLoanResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgLiquidateLoanResponse._() : super();
  factory MsgLiquidateLoanResponse() => create();
  factory MsgLiquidateLoanResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgLiquidateLoanResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgLiquidateLoanResponse clone() => MsgLiquidateLoanResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgLiquidateLoanResponse copyWith(void Function(MsgLiquidateLoanResponse) updates) => super.copyWith((message) => updates(message as MsgLiquidateLoanResponse)) as MsgLiquidateLoanResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgLiquidateLoanResponse create() => MsgLiquidateLoanResponse._();
  MsgLiquidateLoanResponse createEmptyInstance() => create();
  static $pb.PbList<MsgLiquidateLoanResponse> createRepeated() => $pb.PbList<MsgLiquidateLoanResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgLiquidateLoanResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgLiquidateLoanResponse>(create);
  static MsgLiquidateLoanResponse? _defaultInstance;
}

