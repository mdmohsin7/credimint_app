import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/widgets/buttons.dart';
import 'package:loan_flutter/widgets/my_app_bar.dart';
import 'package:provider/provider.dart';

class StakingView extends StatefulWidget {
  const StakingView({super.key});

  @override
  State<StakingView> createState() => _StakingViewState();
}

class _StakingViewState extends State<StakingView> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await Provider.of<AccountProvider>(context, listen: false)
          .getValidators();
    });
    super.initState();
  }

  final TextEditingController _stakingAmountController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(
            title: 'Liquid Staking', implyLeading: true, context: context),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const Gap(30),
            const Text(
              "Amount to stake",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(10),
            Row(
              children: [
                Flexible(
                  child: TextField(
                    controller: _stakingAmountController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 15),
                      labelText: 'Amount',
                      labelStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
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
                    ],
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            const Gap(15),
            DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 15),
                labelText: 'Validators',
                labelStyle: const TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              items: Provider.of<AccountProvider>(context)
                  .validatorsList
                  .map((e) => DropdownMenuItem(
                        value: e.description.moniker,
                        child: Text(
                          e.description.moniker,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {});
              },
            ),
            const Gap(15),
            Text(
              "${"Available balance ${Provider.of<AccountProvider>(context).balances[0].amount}"} CRED",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(30),
            elevatedButton(
              color: Repository.selectedItemColor(context),
              context: context,
              callback: () {
                Provider.of<AccountProvider>(context, listen: false)
                    .liquidStake(
                        amount: "${_stakingAmountController.text}cred",
                        validator:
                            Provider.of<AccountProvider>(context, listen: false)
                                .validatorsList[0]
                                .operatorAddress);
                Navigator.pop(context);
              },
              text: 'Liquid Stake ${_stakingAmountController.text} CRED',
            )
          ],
        ));
  }
}
