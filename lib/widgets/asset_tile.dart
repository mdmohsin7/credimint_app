import 'package:flutter/material.dart';
import 'package:loan_flutter/repo/repository.dart';

class AssetTile extends StatelessWidget {
  final String assetName;
  final String assetDenom;
  final String assetBalance;
  const AssetTile(
      {super.key,
      required this.assetName,
      required this.assetDenom,
      required this.assetBalance});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        assetName,
        style: TextStyle(
            color: Repository.textColor(context), fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        assetDenom,
        style: TextStyle(
          color: Repository.subTextColor(context),
        ),
      ),
      trailing: Text(
        assetBalance,
        style: TextStyle(fontSize: 17, color: Colors.black),
      ),
    );
  }
}
