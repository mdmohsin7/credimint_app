///
//  Generated code. Do not modify.
//  source: credimint/lqs/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MsgLiquid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgLiquid', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.lqs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validator')
    ..hasRequiredFields = false
  ;

  MsgLiquid._() : super();
  factory MsgLiquid({
    $core.String? creator,
    $core.String? amount,
    $core.String? validator,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (validator != null) {
      _result.validator = validator;
    }
    return _result;
  }
  factory MsgLiquid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgLiquid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgLiquid clone() => MsgLiquid()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgLiquid copyWith(void Function(MsgLiquid) updates) => super.copyWith((message) => updates(message as MsgLiquid)) as MsgLiquid; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgLiquid create() => MsgLiquid._();
  MsgLiquid createEmptyInstance() => create();
  static $pb.PbList<MsgLiquid> createRepeated() => $pb.PbList<MsgLiquid>();
  @$core.pragma('dart2js:noInline')
  static MsgLiquid getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgLiquid>(create);
  static MsgLiquid? _defaultInstance;

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
  $core.String get validator => $_getSZ(2);
  @$pb.TagNumber(3)
  set validator($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidator() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidator() => clearField(3);
}

class MsgLiquidResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgLiquidResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.lqs'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgLiquidResponse._() : super();
  factory MsgLiquidResponse() => create();
  factory MsgLiquidResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgLiquidResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgLiquidResponse clone() => MsgLiquidResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgLiquidResponse copyWith(void Function(MsgLiquidResponse) updates) => super.copyWith((message) => updates(message as MsgLiquidResponse)) as MsgLiquidResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgLiquidResponse create() => MsgLiquidResponse._();
  MsgLiquidResponse createEmptyInstance() => create();
  static $pb.PbList<MsgLiquidResponse> createRepeated() => $pb.PbList<MsgLiquidResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgLiquidResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgLiquidResponse>(create);
  static MsgLiquidResponse? _defaultInstance;
}

