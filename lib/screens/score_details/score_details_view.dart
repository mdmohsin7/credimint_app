import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/utils/layouts.dart';
import 'package:loan_flutter/utils/size_config.dart';
import 'package:loan_flutter/widgets/summary_card.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ScoreDetailsView extends StatelessWidget {
  const ScoreDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final size = Layouts.getSize(context);
    return Material(
      color: Repository.bgColor(context),
      elevation: 0,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.44,
            color: Repository.headerColor(context),
          ),
          ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: [
              Gap(getProportionateScreenHeight(50)),
              const Gap(25),
              FittedBox(
                child: SizedBox(
                  height: size.height * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.67,
                        padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(15),
                              right: Radius.circular(15)),
                          color: Repository.accentColor(context),
                        ),
                        child: Container(
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                minimum: 0,
                                maximum: 1000,
                                startAngle: 150,
                                endAngle: 30,
                                showLabels: false,
                                showTicks: false,
                                ranges: <GaugeRange>[
                                  GaugeRange(
                                      startValue: 0,
                                      endValue: 350,
                                      color: Colors.red,
                                      startWidth: 30,
                                      endWidth: 30),
                                  GaugeRange(
                                    startValue: 350,
                                    endValue: 750,
                                    color: Colors.orange,
                                    startWidth: 30,
                                    endWidth: 30,
                                  ),
                                  GaugeRange(
                                    startValue: 750,
                                    endValue: 1000,
                                    color: Colors.green,
                                    startWidth: 30,
                                    endWidth: 30,
                                  ),
                                ],
                                pointers: <GaugePointer>[
                                  MarkerPointer(
                                      value:
                                          Provider.of<AccountProvider>(context)
                                              .user
                                              .creditScore
                                              .toDouble())
                                ],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                    widget: Text(
                                        Provider.of<AccountProvider>(context)
                                            .user
                                            .creditScore
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                    angle: 90,
                                    positionFactor: 0,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SummaryCard(
                      title: 'Loans Taken',
                      subtitle: 'Total number of loans taken',
                      info: Provider.of<AccountProvider>(context)
                          .user
                          .numberOfLoans
                          .toString(),
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                    SummaryCard(
                      title: 'Loans Funded',
                      subtitle: 'Total number of loans funded',
                      info: Provider.of<AccountProvider>(context)
                          .user
                          .numberOfLoansFunded
                          .toString(),
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                    SummaryCard(
                      title: 'Timely Payments',
                      subtitle: 'Total number of timely payments',
                      info: Provider.of<AccountProvider>(context)
                          .user
                          .timelyPayments
                          .toString(),
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                    SummaryCard(
                      title: 'Minimum Collateral',
                      subtitle: 'Minimum collateral in percentage',
                      info:
                          '${Provider.of<AccountProvider>(context).user.collateralPercent}%',
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                    SummaryCard(
                      title: 'Default Rate',
                      subtitle: 'Default rate in percentage',
                      info:
                          '${Provider.of<AccountProvider>(context).user.defaultRate}%',
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                    SummaryCard(
                      title: 'Average Loan Duration',
                      subtitle: 'Average loan duration in days',
                      info:
                          '${Provider.of<AccountProvider>(context).user.loanDuration.toInt() ~/ 86400000} days',
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                    SummaryCard(
                      title: 'Funded Loans Duration',
                      subtitle: 'Average funded loans duration in days',
                      info:
                          '${Provider.of<AccountProvider>(context).user.loanFundedDuration.toInt() ~/ 86400000} days',
                      infoColor: Colors.black,
                      emptyMessage: 'No data',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 290,
                  height: 260,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 1000,
                          startAngle: 150,
                          endAngle: 30,
                          showLabels: false,
                          showTicks: false,
                          ranges: <GaugeRange>[
                            GaugeRange(
                                startValue: 0,
                                endValue: 350,
                                color: Colors.red,
                                startWidth: 30,
                                endWidth: 30),
                            GaugeRange(
                              startValue: 350,
                              endValue: 750,
                              color: Colors.orange,
                              startWidth: 30,
                              endWidth: 30,
                            ),
                            GaugeRange(
                              startValue: 750,
                              endValue: 1000,
                              color: Colors.green,
                              startWidth: 30,
                              endWidth: 30,
                            ),
                          ],
                          pointers: const <GaugePointer>[
                            MarkerPointer(value: 720)
                          ],
                          annotations: const <GaugeAnnotation>[
                            GaugeAnnotation(
                              widget: Text('720',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold)),
                              angle: 90,
                              positionFactor: 0,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  SummaryCard(
                    title: 'Loans Taken',
                    subtitle: 'Total number of loans taken',
                    info: '7',
                    infoColor: Colors.black,
                    emptyMessage: 'No data',
                  ),
                  SummaryCard(
                    title: 'Loans Funded',
                    subtitle: 'Total number of loans funded',
                    info: '0',
                    infoColor: Colors.green,
                    emptyMessage: 'No data',
                  ),
                  SummaryCard(
                    title: 'Timely Payments',
                    subtitle: 'Total number of timely payments',
                    info: '5',
                    infoColor: Colors.black,
                    emptyMessage: 'No data',
                  ),
                  SummaryCard(
                    title: 'Default Rate',
                    subtitle: 'Default rate in percentage',
                    info: '0%',
                    infoColor: Colors.black,
                    emptyMessage: 'No data',
                  ),
                  SummaryCard(
                    title: 'Average Loan Duration',
                    subtitle: 'Average loan duration in days',
                    info: '5',
                    infoColor: Colors.black,
                    emptyMessage: 'No data',
                  ),
                  SummaryCard(
                    title: 'Funded Loans Duration',
                    subtitle: 'Average funded loans duration in days',
                    info: '5',
                    infoColor: Colors.black,
                    emptyMessage: 'No data',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
