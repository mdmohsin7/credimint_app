///
//  Generated code. Do not modify.
//  source: credimint/credimint/packet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum CredimintPacketData_Packet {
  noData, 
  notSet
}

class CredimintPacketData extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CredimintPacketData_Packet> _CredimintPacketData_PacketByTag = {
    1 : CredimintPacketData_Packet.noData,
    0 : CredimintPacketData_Packet.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CredimintPacketData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<NoData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noData', protoName: 'noData', subBuilder: NoData.create)
    ..hasRequiredFields = false
  ;

  CredimintPacketData._() : super();
  factory CredimintPacketData({
    NoData? noData,
  }) {
    final _result = create();
    if (noData != null) {
      _result.noData = noData;
    }
    return _result;
  }
  factory CredimintPacketData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CredimintPacketData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CredimintPacketData clone() => CredimintPacketData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CredimintPacketData copyWith(void Function(CredimintPacketData) updates) => super.copyWith((message) => updates(message as CredimintPacketData)) as CredimintPacketData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CredimintPacketData create() => CredimintPacketData._();
  CredimintPacketData createEmptyInstance() => create();
  static $pb.PbList<CredimintPacketData> createRepeated() => $pb.PbList<CredimintPacketData>();
  @$core.pragma('dart2js:noInline')
  static CredimintPacketData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CredimintPacketData>(create);
  static CredimintPacketData? _defaultInstance;

  CredimintPacketData_Packet whichPacket() => _CredimintPacketData_PacketByTag[$_whichOneof(0)]!;
  void clearPacket() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NoData get noData => $_getN(0);
  @$pb.TagNumber(1)
  set noData(NoData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoData() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoData() => clearField(1);
  @$pb.TagNumber(1)
  NoData ensureNoData() => $_ensure(0);
}

class NoData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'credimint.credimint'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  NoData._() : super();
  factory NoData() => create();
  factory NoData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoData clone() => NoData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoData copyWith(void Function(NoData) updates) => super.copyWith((message) => updates(message as NoData)) as NoData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoData create() => NoData._();
  NoData createEmptyInstance() => create();
  static $pb.PbList<NoData> createRepeated() => $pb.PbList<NoData>();
  @$core.pragma('dart2js:noInline')
  static NoData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoData>(create);
  static NoData? _defaultInstance;
}

