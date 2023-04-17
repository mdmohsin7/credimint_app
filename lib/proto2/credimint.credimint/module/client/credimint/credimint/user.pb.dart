///
//  Generated code. Do not modify.
//  source: credimint/credimint/user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creditScore', $pb.PbFieldType.OU6, protoName: 'creditScore', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timelyPayments', $pb.PbFieldType.OU6, protoName: 'timelyPayments', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultRate', protoName: 'defaultRate')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfLoans', $pb.PbFieldType.OU6, protoName: 'numberOfLoans', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loanDuration', $pb.PbFieldType.OU6, protoName: 'loanDuration', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfLoansFunded', $pb.PbFieldType.OU6, protoName: 'numberOfLoansFunded', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loanFundedDuration', $pb.PbFieldType.OU6, protoName: 'loanFundedDuration', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collateralPercent', protoName: 'collateralPercent')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? index,
    $fixnum.Int64? creditScore,
    $fixnum.Int64? timelyPayments,
    $core.String? defaultRate,
    $fixnum.Int64? numberOfLoans,
    $fixnum.Int64? loanDuration,
    $fixnum.Int64? numberOfLoansFunded,
    $fixnum.Int64? loanFundedDuration,
    $core.String? collateralPercent,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (creditScore != null) {
      _result.creditScore = creditScore;
    }
    if (timelyPayments != null) {
      _result.timelyPayments = timelyPayments;
    }
    if (defaultRate != null) {
      _result.defaultRate = defaultRate;
    }
    if (numberOfLoans != null) {
      _result.numberOfLoans = numberOfLoans;
    }
    if (loanDuration != null) {
      _result.loanDuration = loanDuration;
    }
    if (numberOfLoansFunded != null) {
      _result.numberOfLoansFunded = numberOfLoansFunded;
    }
    if (loanFundedDuration != null) {
      _result.loanFundedDuration = loanFundedDuration;
    }
    if (collateralPercent != null) {
      _result.collateralPercent = collateralPercent;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get index => $_getSZ(0);
  @$pb.TagNumber(1)
  set index($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get creditScore => $_getI64(1);
  @$pb.TagNumber(2)
  set creditScore($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreditScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreditScore() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timelyPayments => $_getI64(2);
  @$pb.TagNumber(3)
  set timelyPayments($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimelyPayments() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimelyPayments() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get defaultRate => $_getSZ(3);
  @$pb.TagNumber(4)
  set defaultRate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDefaultRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDefaultRate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get numberOfLoans => $_getI64(4);
  @$pb.TagNumber(5)
  set numberOfLoans($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumberOfLoans() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumberOfLoans() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get loanDuration => $_getI64(5);
  @$pb.TagNumber(6)
  set loanDuration($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLoanDuration() => $_has(5);
  @$pb.TagNumber(6)
  void clearLoanDuration() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get numberOfLoansFunded => $_getI64(6);
  @$pb.TagNumber(7)
  set numberOfLoansFunded($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNumberOfLoansFunded() => $_has(6);
  @$pb.TagNumber(7)
  void clearNumberOfLoansFunded() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get loanFundedDuration => $_getI64(7);
  @$pb.TagNumber(8)
  set loanFundedDuration($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLoanFundedDuration() => $_has(7);
  @$pb.TagNumber(8)
  void clearLoanFundedDuration() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get collateralPercent => $_getSZ(8);
  @$pb.TagNumber(9)
  set collateralPercent($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCollateralPercent() => $_has(8);
  @$pb.TagNumber(9)
  void clearCollateralPercent() => clearField(9);
}

