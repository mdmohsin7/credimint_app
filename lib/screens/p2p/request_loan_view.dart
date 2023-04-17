import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loan_flutter/generated/assets.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/utils/layouts.dart';
import 'package:loan_flutter/utils/size_config.dart';
import 'package:loan_flutter/widgets/buttons.dart';
import 'package:loan_flutter/widgets/my_app_bar.dart';
import 'package:provider/provider.dart';

class RequestLoanView extends StatefulWidget {
  const RequestLoanView({Key? key}) : super(key: key);

  @override
  _RequestLoanViewState createState() => _RequestLoanViewState();
}

class _RequestLoanViewState extends State<RequestLoanView> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _feeController = TextEditingController();
  final TextEditingController _deadlineController = TextEditingController();
  String amount = "";
  String amountDenom = "";
  String collateral = "";
  String collateralDenom = "";
  String fee = "";
  String feeDenom = "";
  String deadline = "";

  void calculateCollateralAmount() {
    // double collateralPercent = double.parse(
    // Provider.of<AccountProvider>(context).user.collateralPercent);
    double collateralPercent = 150;
    setState(() {
      collateral =
          ((collateralPercent / 100) * double.parse(_amountController.text))
              .toString();
    });
    print(collateral);
  }

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Repository.bgColor(context),
      appBar: myAppBar(
          title: 'Request a Loan', implyLeading: true, context: context),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Gap(30),
          TextField(
            enabled: false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 15),
              labelText: Provider.of<AccountProvider>(context, listen: false)
                      .user
                      .index ??
                  "ejnkwm",
              labelStyle: const TextStyle(fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _amountController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    labelText: 'Loan Amount',
                    labelStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (value) {
                    calculateCollateralAmount();
                  },
                ),
              ),
              const Gap(10),
              Flexible(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    labelText: 'Denomination',
                    labelStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'CRED',
                      child: Text('CRED'),
                    ),
                    DropdownMenuItem(
                      value: 'cUSD',
                      child: Text('cUSD'),
                    ),
                    DropdownMenuItem(
                      value: 'sCRED',
                      child: Text('sCRED'),
                    ),
                  ],
                  onChanged: (value) {
                    amountDenom = value!.toLowerCase().toString();
                  },
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Flexible(
                child: TextField(
                  enabled: true,
                  readOnly: true,
                  controller: TextEditingController(text: collateral),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    labelText: 'Collateral Amount',
                    labelStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Flexible(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    labelText: 'Denomination',
                    labelStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'CRED',
                      child: Text('CRED'),
                    ),
                    DropdownMenuItem(
                      value: 'cUSD',
                      child: Text('cUSD'),
                    ),
                    DropdownMenuItem(
                      value: 'sCRED',
                      child: Text('sCRED'),
                    ),
                  ],
                  onChanged: (value) {
                    collateralDenom = value!.toLowerCase().toString();
                  },
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _feeController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    labelText: 'Fee Amount',
                    labelStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Flexible(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    labelText: 'Denomination',
                    labelStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'CRED',
                      child: Text('CRED'),
                    ),
                    DropdownMenuItem(
                      value: 'cUSD',
                      child: Text('cUSD'),
                    ),
                    DropdownMenuItem(
                      value: 'sCRED',
                      child: Text('sCRED'),
                    ),
                  ],
                  onChanged: (value) {
                    feeDenom = value!.toLowerCase().toString();
                  },
                ),
              ),
            ],
          ),
          const Gap(20),
          TextField(
            enabled: true,
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101));

              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);

                setState(() {
                  _deadlineController.text = formattedDate;
                });
              } else {
                print("Date is not selected");
              }
            },
            controller: _deadlineController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 15),
              labelText: 'Deadline',
              labelStyle: const TextStyle(fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Gap(30),
          elevatedButton(
            color: Repository.selectedItemColor(context),
            context: context,
            callback: () async {
              await Provider.of<AccountProvider>(context, listen: false)
                  .requestALoan(
                amount: _amountController.text + amountDenom,
                collateral: collateral + collateralDenom,
                fee: _feeController.text + feeDenom,
                deadline: _deadlineController.text,
              )
                  .then((value) {
                print(value);
                Navigator.pop(context);
              });
            },
            text: 'Request Loan',
          )
        ],
      ),
    );
  }

  Widget customColumn({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title.toUpperCase(), style: const TextStyle(fontSize: 12)),
        const Gap(4),
        Text(subtitle, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
