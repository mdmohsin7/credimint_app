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
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<AccountProvider>(context, listen: false).getAllLoans();
    });
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
          physics: NeverScrollableScrollPhysics(),
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
            const Gap(22),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Provider.of<AccountProvider>(context).loans.length,
              separatorBuilder: (context, index) => const Gap(22),
              itemBuilder: (context, index) {
                return LoanCard(
                  loan: Provider.of<AccountProvider>(context).loans[index],
                  onPressed: () {
                    Provider.of<AccountProvider>(context, listen: false)
                        .approveLoan(
                            loanId: Provider.of<AccountProvider>(context,
                                    listen: false)
                                .loans[index]
                                .id
                                .toInt());
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
