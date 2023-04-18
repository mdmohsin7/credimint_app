import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/screens/staking/staking_view.dart';
import 'package:loan_flutter/utils/layouts.dart';
import 'package:loan_flutter/utils/size_config.dart';
import 'package:loan_flutter/widgets/asset_tile.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    Provider.of<AccountProvider>(context, listen: false).getBalance();
    Provider.of<AccountProvider>(context, listen: false).getUserScore();
    Provider.of<AccountProvider>(context, listen: false).getAllLoans();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final size = Layouts.getSize(context);
    return Scaffold(
      body: Material(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 16)),
                        const Gap(3),
                        const Text('Welcome back',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
                const Gap(25),
                FittedBox(
                  child: SizedBox(
                    height: size.height * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.67,
                          padding: const EdgeInsets.fromLTRB(16, 10, 0, 20),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(15),
                                right: Radius.circular(15)),
                            color: Repository.cardColor(context),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image.asset(Assets.cardsVisaYellow,
                              //     width: 60, height: 50, fit: BoxFit.cover),
                              const SizedBox(
                                width: 70,
                                height: 30,
                                child: Text(
                                  "Credimint",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Text('SCORE',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 12)),
                              const Gap(4),
                              Text(
                                  Provider.of<AccountProvider>(context)
                                          .user
                                          .creditScore
                                          .toString() ??
                                      '720',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32,
                                      color: Colors.white)),
                              const Gap(15),
                              Text('ADDRESS',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 12)),
                              const Gap(4),
                              Text(
                                  Provider.of<AccountProvider>(context)
                                          .walletInUse
                                          .bech32Address ??
                                      '',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(15),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Assets',
                      style: TextStyle(
                        color: Repository.textColor(context),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount:
                        Provider.of<AccountProvider>(context).balances.length,
                    itemBuilder: (context, index) {
                      return AssetTile(
                        assetName: Provider.of<AccountProvider>(context)
                            .balances[index]
                            .denom,
                        assetDenom: Provider.of<AccountProvider>(context)
                            .balances[index]
                            .denom,
                        assetBalance: Provider.of<AccountProvider>(context)
                            .balances[index]
                            .amount,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StakingView()));
        },
        style: ElevatedButton.styleFrom(
          primary: Repository.selectedItemColor(context),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        child: const Text(
          'Liquid Stake',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
