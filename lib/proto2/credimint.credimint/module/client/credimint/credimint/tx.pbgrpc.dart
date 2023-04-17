///
//  Generated code. Do not modify.
//  source: credimint/credimint/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $1;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$requestLoan =
      $grpc.ClientMethod<$1.MsgRequestLoan, $1.MsgRequestLoanResponse>(
          '/credimint.credimint.Msg/RequestLoan',
          ($1.MsgRequestLoan value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgRequestLoanResponse.fromBuffer(value));
  static final _$approveLoan =
      $grpc.ClientMethod<$1.MsgApproveLoan, $1.MsgApproveLoanResponse>(
          '/credimint.credimint.Msg/ApproveLoan',
          ($1.MsgApproveLoan value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgApproveLoanResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.MsgRequestLoanResponse> requestLoan(
      $1.MsgRequestLoan request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestLoan, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgApproveLoanResponse> approveLoan(
      $1.MsgApproveLoan request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$approveLoan, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'credimint.credimint.Msg';

  MsgServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.MsgRequestLoan, $1.MsgRequestLoanResponse>(
            'RequestLoan',
            requestLoan_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.MsgRequestLoan.fromBuffer(value),
            ($1.MsgRequestLoanResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.MsgApproveLoan, $1.MsgApproveLoanResponse>(
            'ApproveLoan',
            approveLoan_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.MsgApproveLoan.fromBuffer(value),
            ($1.MsgApproveLoanResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.MsgRequestLoanResponse> requestLoan_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgRequestLoan> request) async {
    return requestLoan(call, await request);
  }

  $async.Future<$1.MsgApproveLoanResponse> approveLoan_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgApproveLoan> request) async {
    return approveLoan(call, await request);
  }

  $async.Future<$1.MsgRequestLoanResponse> requestLoan(
      $grpc.ServiceCall call, $1.MsgRequestLoan request);
  $async.Future<$1.MsgApproveLoanResponse> approveLoan(
      $grpc.ServiceCall call, $1.MsgApproveLoan request);
}
