import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/widgets/buttons.dart';
import 'package:loan_flutter/widgets/my_app_bar.dart';

class StakingView extends StatelessWidget {
  const StakingView({super.key});

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
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 15),
                      labelText: 'Amount',
                      labelStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {},
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
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            const Gap(15),
            const Text(
              "Available balance" + " 0.00 CRED",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(6),
            const Text(
              "Current delegations" + " 0.00 CRED",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Gap(30),
            elevatedButton(
              color: Repository.selectedItemColor(context),
              context: context,
              callback: () {},
              text: 'Liquid Stake' + " 0.00 CRED",
            )
          ],
        ));
  }
}
