import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loan_flutter/utils/layouts.dart';
import 'package:loan_flutter/utils/styles.dart';
import '../proto2/credimint.credimint/module/export.dart';

class LoanCard extends StatelessWidget {
  final Loan loan;
  final Function onPressed;
  const LoanCard({super.key, required this.loan, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    return FittedBox(
      child: SizedBox(
        height: size.height * 0.295,
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
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    loan.amoount.toString(),
                    style: TextStyle(
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
                    style: TextStyle(color: Colors.white, fontSize: 10),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Gap(10),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.only(left: 60, right: 60),
                        ),
                        onPressed: () => onPressed(),
                        child: const Text(
                          'Fullfil',
                          style: TextStyle(color: Colors.black),
                        )),
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
