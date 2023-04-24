import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/utils/layouts.dart';
import 'package:loan_flutter/screens/p2p/request_loan_view.dart';
import 'package:loan_flutter/widgets/loan_card.dart';
import 'package:loan_flutter/widgets/my_app_bar.dart';
import 'package:provider/provider.dart';

class P2PMarketplaceView extends StatefulWidget {
  const P2PMarketplaceView({Key? key}) : super(key: key);

  @override
  State<P2PMarketplaceView> createState() => _P2PMarketplaceViewState();
}

class _P2PMarketplaceViewState extends State<P2PMarketplaceView> {
  int defaultChoiceIndex = 0;
  final List<String> _choicesList = [
    'All',
    'Requested',
    'Approved',
    'Repayed',
    'Liquidated'
  ];
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<AccountProvider>(context, listen: false).getAllLoans();
    });
    defaultChoiceIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);

    return Scaffold(
      backgroundColor: Repository.bgColor(context),
      appBar: myAppBar(
          title: 'P2P Marketplace', implyLeading: false, context: context),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const RequestLoanView(),
                    ),
                  ),
                  child: Container(
                    width: size.width * 0.78,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Repository.accentColor(context),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.add,
                            color: Repository.textColor(context), size: 20),
                        const Gap(10),
                        Text(
                          'Request a Loan',
                          style: TextStyle(
                            color: Repository.textColor(context),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(24),
            Wrap(
              spacing: 8,
              children: List.generate(_choicesList.length, (index) {
                return ChoiceChip(
                  labelPadding: const EdgeInsets.all(2.0),
                  label: Text(
                    _choicesList[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.white, fontSize: 14),
                  ),
                  selected: defaultChoiceIndex == index,
                  selectedColor: Repository.selectedItemColor(context),
                  onSelected: (value) {
                    setState(() {
                      defaultChoiceIndex = value ? index : defaultChoiceIndex;
                    });
                    Provider.of<AccountProvider>(context, listen: false)
                        .filterLoans(value
                            ? _choicesList[index]
                            : _choicesList[defaultChoiceIndex]);
                  },
                  // backgroundColor: color,
                  elevation: 1,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                );
              }),
            ),
            const Gap(20),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount:
                  Provider.of<AccountProvider>(context).tempLoansList.length,
              separatorBuilder: (context, index) => const Gap(22),
              itemBuilder: (context, index) {
                return LoanCard(
                  wallet: Provider.of<AccountProvider>(context).walletInUse,
                  loan: Provider.of<AccountProvider>(context)
                      .tempLoansList[index],
                  onPressed: () {
                    Provider.of<AccountProvider>(context, listen: false)
                        .approveLoan(
                      loanId:
                          Provider.of<AccountProvider>(context, listen: false)
                              .tempLoansList[index]
                              .id
                              .toInt(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
