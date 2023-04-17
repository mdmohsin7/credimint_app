import 'package:flutter/material.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: Image.asset("assets/logo.png"),
          ),
          ElevatedButton(
            child: const Text("Continue as Alice"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text("Continue as Bob"),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
