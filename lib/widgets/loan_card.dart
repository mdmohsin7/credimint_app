import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/utils/layouts.dart';
import 'package:loan_flutter/utils/styles.dart';
import 'package:provider/provider.dart';
import '../proto2/credimint.credimint/module/export.dart';

class LoanCard extends StatelessWidget {
  final Loan loan;
  final Wallet wallet;
  final Function onPressed;
  const LoanCard(
      {super.key,
      required this.loan,
      required this.onPressed,
      required this.wallet});

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    return FittedBox(
      child: SizedBox(
        height: size.height * 0.33,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.67,
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(15), right: Radius.circular(15)),
                color: Styles.greenColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loan.id.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    loan.amoount.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  const Gap(15),
                  Text(
                    'Borrower',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 10),
                  ),
                  const Gap(4),
                  Text(
                    loan.borrower.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Risk Level',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 10),
                          ),
                          const Gap(3),
                          Text(
                            loan.riskLevel.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                      const Gap(80),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Score',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 10),
                          ),
                          const Gap(3),
                          Text(
                            loan.borrowerScore.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Collateral',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 10),
                          ),
                          const Gap(3),
                          Text(
                            loan.collateral.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                      const Gap(60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deadline',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10,
                            ),
                          ),
                          const Gap(3),
                          Text(
                            DateFormat('dd/MM/yyyy')
                                .format(DateTime.fromMillisecondsSinceEpoch(
                              int.parse(loan.deadline),
                            )),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(10),
                  if (loan.state == 'approved')
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.only(left: 60, right: 60),
                          ),
                          onPressed: () async {
                            if (loan.borrower == wallet.bech32Address) {
                              Provider.of<AccountProvider>(context,
                                      listen: false)
                                  .repayLoan(loanId: loan.id.toInt());
                            } else {
                              if (DateTime.fromMillisecondsSinceEpoch(
                                int.parse(loan.deadline),
                              ).isBefore(DateTime.now())) {
                                await Provider.of<AccountProvider>(context,
                                        listen: false)
                                    .liquidateLoan(loanId: loan.id.toInt());
                              }
                            }
                          },
                          child: Text(
                            (loan.borrower == wallet.bech32Address)
                                ? 'Repay'
                                : 'Liquidate',
                            style: const TextStyle(color: Colors.black),
                          )),
                    ),
                  if (loan.state == 'requested')
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.only(left: 50, right: 50),
                          ),
                          onPressed: () async {
                            if (loan.borrower == wallet.bech32Address) {
                              await Provider.of<AccountProvider>(context,
                                      listen: false)
                                  .cancelLoan(loanId: loan.id.toInt());
                            } else {
                              await Provider.of<AccountProvider>(context,
                                      listen: false)
                                  .approveLoan(loanId: loan.id.toInt());
                            }
                          },
                          child: Text(
                            (loan.borrower == wallet.bech32Address)
                                ? 'Cancel'
                                : 'Approve',
                            style: const TextStyle(color: Colors.black),
                          )),
                    ),
                  if (loan.state == 'repayed' || loan.state == 'liquidated')
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lender',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10),
                        ),
                        const Gap(4),
                        Text(
                          loan.lender.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
