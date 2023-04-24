import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/staking/v1beta1/query.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:loan_flutter/main.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:alan/proto/cosmos/staking/v1beta1/export.dart' as val;
import 'package:loan_flutter/proto2/credimint.credimint/module/export.dart'
    as credimint;
import 'package:loan_flutter/proto2/credimint.lqs/module/export.dart' as lqs;
import 'package:shared_preferences/shared_preferences.dart';

import '../proto2/credimint.credimint/module/export.dart';

class AccountProvider extends ChangeNotifier {
  Map<String, List> wallets = {};
  late Wallet walletInUse;
  String walletInUseName = '';
  List<Coin> balances = [];
  User user = User();
  List<Loan> loans = [];
  List<Loan> userLoans = [];
  List<Loan> tempUserLoansList = [];
  List<Loan> tempLoansList = [];
  int avatarIndex = 0;
  int currentAvatarIndex = 0;
  List<val.Validator> validatorsList = [];
  Future refreshData() async {
    await getUserScore();
    await getAllLoans();
    await getUserLoans();
    await getBalance();
    await getValidators();
    tempLoansList = loans;
    tempUserLoansList = userLoans;
    notifyListeners();
  }

  void filterLoans(String status) {
    tempLoansList = [];
    if (status.toLowerCase() == 'all') {
      tempLoansList = loans;
    } else if (status.toLowerCase() == 'requested') {
      for (var element in loans) {
        if (element.state == 'requested') {
          tempLoansList.add(element);
        }
      }
    } else if (status.toLowerCase() == 'approved') {
      for (var element in loans) {
        if (element.state == 'approved') {
          tempLoansList.add(element);
        }
      }
    } else if (status.toLowerCase() == 'liquidated') {
      for (var element in loans) {
        if (element.state == 'liquidated') {
          tempLoansList.add(element);
        }
      }
    } else if (status.toLowerCase() == 'repayed') {
      for (var element in loans) {
        if (element.state == 'repayed') {
          tempLoansList.add(element);
        }
      }
    }
    notifyListeners();
  }

  void filterUserLoans(String status) {
    tempUserLoansList = [];
    if (status.toLowerCase() == 'all') {
      tempUserLoansList = userLoans;
    } else if (status.toLowerCase() == 'requested') {
      for (var element in userLoans) {
        if (element.state == 'requested') {
          tempUserLoansList.add(element);
        }
      }
    } else if (status.toLowerCase() == 'approved') {
      for (var element in userLoans) {
        if (element.state == 'approved') {
          tempUserLoansList.add(element);
        }
      }
    } else if (status.toLowerCase() == 'liquidated') {
      for (var element in userLoans) {
        if (element.state == 'liquidated') {
          tempUserLoansList.add(element);
        }
      }
    } else if (status.toLowerCase() == 'repayed') {
      for (var element in userLoans) {
        if (element.state == 'repayed') {
          tempUserLoansList.add(element);
        }
      }
    }
    notifyListeners();
  }

  void importWallet(String mnemonic, String accountName) async {
    walletInUse = Wallet.derive(mnemonic.split(" "), networkInfo);
    avatarIndex = avatarIndex + 1;
    wallets[walletInUse.bech32Address] = [
      accountName,
      walletInUse,
      avatarIndex
    ];
    walletInUseName = accountName;
    currentAvatarIndex = avatarIndex;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstTime', false);
    prefs.setString('walletInUse', walletInUse.bech32Address);
    prefs.reload();
    notifyListeners();
  }

  void updateWalletInUse(int index) {
    walletInUse = wallets.values.elementAt(index)[1];
    walletInUseName = wallets.values.elementAt(index)[0];
    currentAvatarIndex = wallets.values.elementAt(index)[2];
    refreshData();
    notifyListeners();
  }

  Future getUserScore() async {
    final credimintClient = credimint.QueryClient(networkInfo.gRPCChannel);
    final res = await credimintClient.user(
        credimint.QueryGetUserRequest()..index = walletInUse.bech32Address);
    user = res.user;
    notifyListeners();
  }

  Future getAllLoans() async {
    final credimintClient = credimint.QueryClient(networkInfo.gRPCChannel);
    final res = await credimintClient.loanAll(credimint.QueryAllLoanRequest());
    loans = res.loan;
    notifyListeners();
  }

  Future getUserLoans() async {
    userLoans = [];
    for (var element in loans) {
      if ((element.lender == walletInUse.bech32Address) ||
          (element.borrower == walletInUse.bech32Address)) {
        userLoans.add(element);
      }
    }
    notifyListeners();
  }

  Future<TxResponse> requestLoan(
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
    notifyListeners();
    return result;
  }

  Future<void> approveLoan({required int loanId}) async {
    final message = credimint.MsgApproveLoan(
        id: loanId.toInt64(), creator: walletInUse.bech32Address);
    final signer = TxSigner.fromNetworkInfo(networkInfo);
    final signedTx = await signer.createAndSign(
      walletInUse,
      [message],
    );
    final sender = TxSender.fromNetworkInfo(networkInfo);
    final result = await sender.broadcastTx(signedTx);
    notifyListeners();
  }

  Future<void> repayLoan({required int loanId}) async {
    final message = credimint.MsgRepayLoan(
      id: loanId.toInt64(),
      creator: walletInUse.bech32Address,
      repayTime: DateTime.now().millisecondsSinceEpoch.toString(),
    );
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

  Future<void> liquidateLoan({required int loanId}) async {
    final message = credimint.MsgLiquidateLoan(
      id: loanId.toInt64(),
      creator: walletInUse.bech32Address,
      liquidationTime: DateTime.now().millisecondsSinceEpoch.toString(),
    );
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

  Future<void> cancelLoan({required int loanId}) async {
    final message = credimint.MsgCancelLoan(
      id: loanId.toInt64(),
      creator: walletInUse.bech32Address,
    );
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

  Future getBalance() async {
    final bankClient = bank.QueryClient(networkInfo.gRPCChannel);
    final balance = await bankClient.allBalances(
        bank.QueryAllBalancesRequest()..address = walletInUse.bech32Address);
    balances = balance.balances;
    notifyListeners();
  }

  Future getValidators() async {
    final valCLient = val.QueryClient(networkInfo.gRPCChannel);
    final validators = await valCLient.validators(QueryValidatorsRequest());
    validatorsList = validators.validators;
    notifyListeners();
  }

  Future liquidStake(
      {required String amount, required String validator}) async {
    final message = lqs.MsgLiquid(
      amount: amount,
      creator: walletInUse.bech32Address,
      validator: validator,
    );
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
}
