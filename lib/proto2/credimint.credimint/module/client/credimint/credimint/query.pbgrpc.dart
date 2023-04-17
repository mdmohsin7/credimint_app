///
//  Generated code. Do not modify.
//  source: credimint/credimint/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$params =
      $grpc.ClientMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
          '/credimint.credimint.Query/Params',
          ($0.QueryParamsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryParamsResponse.fromBuffer(value));
  static final _$loan =
      $grpc.ClientMethod<$0.QueryGetLoanRequest, $0.QueryGetLoanResponse>(
          '/credimint.credimint.Query/Loan',
          ($0.QueryGetLoanRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryGetLoanResponse.fromBuffer(value));
  static final _$loanAll =
      $grpc.ClientMethod<$0.QueryAllLoanRequest, $0.QueryAllLoanResponse>(
          '/credimint.credimint.Query/LoanAll',
          ($0.QueryAllLoanRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryAllLoanResponse.fromBuffer(value));
  static final _$user =
      $grpc.ClientMethod<$0.QueryGetUserRequest, $0.QueryGetUserResponse>(
          '/credimint.credimint.Query/User',
          ($0.QueryGetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryGetUserResponse.fromBuffer(value));
  static final _$userAll =
      $grpc.ClientMethod<$0.QueryAllUserRequest, $0.QueryAllUserResponse>(
          '/credimint.credimint.Query/UserAll',
          ($0.QueryAllUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryAllUserResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryParamsResponse> params(
      $0.QueryParamsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetLoanResponse> loan(
      $0.QueryGetLoanRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loan, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllLoanResponse> loanAll(
      $0.QueryAllLoanRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loanAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetUserResponse> user(
      $0.QueryGetUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$user, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllUserResponse> userAll(
      $0.QueryAllUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userAll, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'credimint.credimint.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
            'Params',
            params_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryParamsRequest.fromBuffer(value),
            ($0.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryGetLoanRequest, $0.QueryGetLoanResponse>(
            'Loan',
            loan_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryGetLoanRequest.fromBuffer(value),
            ($0.QueryGetLoanResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryAllLoanRequest, $0.QueryAllLoanResponse>(
            'LoanAll',
            loanAll_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryAllLoanRequest.fromBuffer(value),
            ($0.QueryAllLoanResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryGetUserRequest, $0.QueryGetUserResponse>(
            'User',
            user_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryGetUserRequest.fromBuffer(value),
            ($0.QueryGetUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryAllUserRequest, $0.QueryAllUserResponse>(
            'UserAll',
            userAll_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryAllUserRequest.fromBuffer(value),
            ($0.QueryAllUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryParamsResponse> params_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$0.QueryGetLoanResponse> loan_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryGetLoanRequest> request) async {
    return loan(call, await request);
  }

  $async.Future<$0.QueryAllLoanResponse> loanAll_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryAllLoanRequest> request) async {
    return loanAll(call, await request);
  }

  $async.Future<$0.QueryGetUserResponse> user_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryGetUserRequest> request) async {
    return user(call, await request);
  }

  $async.Future<$0.QueryAllUserResponse> userAll_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryAllUserRequest> request) async {
    return userAll(call, await request);
  }

  $async.Future<$0.QueryParamsResponse> params(
      $grpc.ServiceCall call, $0.QueryParamsRequest request);
  $async.Future<$0.QueryGetLoanResponse> loan(
      $grpc.ServiceCall call, $0.QueryGetLoanRequest request);
  $async.Future<$0.QueryAllLoanResponse> loanAll(
      $grpc.ServiceCall call, $0.QueryAllLoanRequest request);
  $async.Future<$0.QueryGetUserResponse> user(
      $grpc.ServiceCall call, $0.QueryGetUserRequest request);
  $async.Future<$0.QueryAllUserResponse> userAll(
      $grpc.ServiceCall call, $0.QueryAllUserRequest request);
}
