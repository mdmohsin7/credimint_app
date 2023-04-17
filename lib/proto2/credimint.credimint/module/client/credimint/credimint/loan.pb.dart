///
//  Generated code. Do not modify.
//  source: credimint/credimint/loan.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Loan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Loan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amoount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collateral')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deadline')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'borrower')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lender')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'riskLevel', protoName: 'riskLevel')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'borrowerScore', protoName: 'borrowerScore')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lenderScore', protoName: 'lenderScore')
    ..hasRequiredFields = false
  ;

  Loan._() : super();
  factory Loan({
    $fixnum.Int64? id,
    $core.String? amoount,
    $core.String? fee,
    $core.String? collateral,
    $core.String? deadline,
    $core.String? state,
    $core.String? borrower,
    $core.String? lender,
    $core.String? riskLevel,
    $core.String? borrowerScore,
    $core.String? lenderScore,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (amoount != null) {
      _result.amoount = amoount;
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
    if (state != null) {
      _result.state = state;
    }
    if (borrower != null) {
      _result.borrower = borrower;
    }
    if (lender != null) {
      _result.lender = lender;
    }
    if (riskLevel != null) {
      _result.riskLevel = riskLevel;
    }
    if (borrowerScore != null) {
      _result.borrowerScore = borrowerScore;
    }
    if (lenderScore != null) {
      _result.lenderScore = lenderScore;
    }
    return _result;
  }
  factory Loan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Loan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Loan clone() => Loan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Loan copyWith(void Function(Loan) updates) => super.copyWith((message) => updates(message as Loan)) as Loan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Loan create() => Loan._();
  Loan createEmptyInstance() => create();
  static $pb.PbList<Loan> createRepeated() => $pb.PbList<Loan>();
  @$core.pragma('dart2js:noInline')
  static Loan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Loan>(create);
  static Loan? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amoount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amoount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmoount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmoount() => clearField(2);

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

  @$pb.TagNumber(6)
  $core.String get state => $_getSZ(5);
  @$pb.TagNumber(6)
  set state($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasState() => $_has(5);
  @$pb.TagNumber(6)
  void clearState() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get borrower => $_getSZ(6);
  @$pb.TagNumber(7)
  set borrower($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBorrower() => $_has(6);
  @$pb.TagNumber(7)
  void clearBorrower() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lender => $_getSZ(7);
  @$pb.TagNumber(8)
  set lender($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLender() => $_has(7);
  @$pb.TagNumber(8)
  void clearLender() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get riskLevel => $_getSZ(8);
  @$pb.TagNumber(9)
  set riskLevel($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRiskLevel() => $_has(8);
  @$pb.TagNumber(9)
  void clearRiskLevel() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get borrowerScore => $_getSZ(9);
  @$pb.TagNumber(10)
  set borrowerScore($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBorrowerScore() => $_has(9);
  @$pb.TagNumber(10)
  void clearBorrowerScore() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lenderScore => $_getSZ(10);
  @$pb.TagNumber(11)
  set lenderScore($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLenderScore() => $_has(10);
  @$pb.TagNumber(11)
  void clearLenderScore() => clearField(11);
}

