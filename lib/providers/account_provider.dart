import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:loan_flutter/main.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:loan_flutter/proto2/credimint.credimint/module/export.dart'
    as credimint;
import 'package:shared_preferences/shared_preferences.dart';

import '../proto2/credimint.credimint/module/export.dart';

class AccountProvider extends ChangeNotifier {
  Map<String, List> wallets = {};
  late Wallet walletInUse;
  List<Coin> balances = [];
  User user = User();
  List<Loan> loans = [];
  List<Loan> userLoans = [];

  void importWallet(String mnemonic, String accountName) async {
    walletInUse = Wallet.derive(mnemonic.split(" "), networkInfo);
    wallets[walletInUse.bech32Address] = [accountName, walletInUse];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstTime', false);
    prefs.setString('walletInUse', walletInUse.bech32Address);
    prefs.reload();
    notifyListeners();
  }

  void getUserScore() async {
    final credimintClient = credimint.QueryClient(networkInfo.gRPCChannel);
    final res = await credimintClient.user(
        credimint.QueryGetUserRequest()..index = walletInUse.bech32Address);
    user = res.user;
    notifyListeners();
  }

  void getAllLoans() async {
    final credimintClient = credimint.QueryClient(networkInfo.gRPCChannel);
    final res = await credimintClient.loanAll(credimint.QueryAllLoanRequest());
    loans = res.loan;
    notifyListeners();
  }

  void getUserLoans() async {
    userLoans = [];
    for (var element in loans) {
      if (element.lender == walletInUse.bech32Address) {
        userLoans.add(element);
      }
    }
    notifyListeners();
  }

  Future<TxResponse> requestALoan(
      {required String amount,
      required String collateral,
      required String deadline,
      required String fee}) async {
    final message = credimint.MsgRequestLoan(
      amount: amount,
      collateral: collateral,
      creator: walletInUse.bech32Address,
      deadline: deadline,
      fee: fee,
    );
    final signer = TxSigner.fromNetworkInfo(networkInfo);
    final signedTx = await signer.createAndSign(
      walletInUse,
      [message],
    );
    final sender = TxSender.fromNetworkInfo(networkInfo);
    final result = await sender.broadcastTx(signedTx);
    print(result.data);
    notifyListeners();
    return result;
  }

  void approveLoan({required int loanId}) async {
    final message = credimint.MsgApproveLoan(
        id: loanId.toInt64(), creator: walletInUse.bech32Address);
    final signer = TxSigner.fromNetworkInfo(networkInfo);
    final signedTx = await signer.createAndSign(
      walletInUse,
      [message],
    );
    final sender = TxSender.fromNetworkInfo(networkInfo);
    final result = await sender.broadcastTx(signedTx);
    print(result);
    notifyListeners();
  }

  void getBalance() async {
    final bankClient = bank.QueryClient(networkInfo.gRPCChannel);
    final balance = await bankClient.allBalances(
        bank.QueryAllBalancesRequest()..address = walletInUse.bech32Address);
    balances = balance.balances;
    notifyListeners();
  }
}
