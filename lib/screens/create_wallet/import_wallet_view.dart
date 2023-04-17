import 'package:flutter/material.dart';
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/repo/repository.dart';
import 'package:loan_flutter/widgets/bottom_nav.dart';
import 'package:loan_flutter/widgets/buttons.dart';
import 'package:provider/provider.dart';

class ImportWalletView extends StatefulWidget {
  const ImportWalletView({Key? key}) : super(key: key);

  static const routeName = "seed phrase";

  @override
  State<ImportWalletView> createState() => _ImportWalletViewState();
}

class _ImportWalletViewState extends State<ImportWalletView> {
  bool isSwitch = false;
  bool buttonEnabled = false;

  final TextEditingController _seedPhraseController = TextEditingController();
  final TextEditingController _accountNameController = TextEditingController();

  @override
  void initState() {
    _seedPhraseController.text = "";
    _accountNameController.text = "";

    super.initState();
  }

  @override
  void dispose() {
    _accountNameController.dispose();
    _seedPhraseController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              onChanged: () {
                setState(() {
                  buttonEnabled = _formKey.currentState!.validate();
                });
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 150),
                    Center(
                      child: SizedBox(
                        height: 150,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ),
                    const SizedBox(height: 50),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter account name";
                        }
                        return null;
                      },
                      controller: _accountNameController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 15),
                        labelText: 'Amount Name',
                        labelStyle: const TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter seed phrase";
                        }
                        return null;
                      },
                      maxLines: 4,
                      controller: _seedPhraseController,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(left: 15, top: 15),
                        labelText: 'Seed Phrase',
                        labelStyle: const TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    Center(
                        child: elevatedButton(
                      color: Repository.selectedItemColor(context),
                      context: context,
                      callback: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Provider.of<AccountProvider>(context, listen: false)
                              .importWallet(_seedPhraseController.text,
                                  _accountNameController.text);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (c) => const BottomNav(),
                            ),
                          );
                        }
                      },
                      text: 'Continue',
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
