import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:loan_flutter/proto2/credimint.credimint/module/export.dart'
    as loan;
import 'package:loan_flutter/providers/account_provider.dart';
import 'package:loan_flutter/screens/create_wallet/import_wallet_view.dart';
import 'package:loan_flutter/screens/home/home_view.dart';
import 'package:loan_flutter/screens/p2p/p2p_marketplace_view.dart';
import 'package:loan_flutter/screens/p2p/request_loan_view.dart';
import 'package:loan_flutter/utils/styles.dart';
import 'package:loan_flutter/view_models/view_models.dart';
import 'package:loan_flutter/views/splash.dart';
import 'package:loan_flutter/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomeView(),
//     );
//   }
// }

final networkInfo = NetworkInfo(
  bech32Hrp: "cred",
  grpcInfo: GRPCInfo(
    host: "http://10.0.2.2",
  ),
  lcdInfo: LCDInfo(host: "http://10.0.2.2"),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModel()),
        ChangeNotifierProvider(create: (_) => AccountProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Banking App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'DMSans',
          primaryColor: Styles.primaryColor,
          backgroundColor: Styles.primaryColor,
        ),
        home: const ImportWalletView(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future<void> _incrementCounter() async {
    // setState(() {
    //   _counter++;
    // });
    print(wallet);
    final message = loan.MsgRequestLoan(
      amount: '1000token',
      collateral: '5000stake',
      creator: wallet.bech32Address,
      deadline: '20',
      fee: '10token',
    );
    print(message);
    final signer = TxSigner.fromNetworkInfo(networkInfo);
    final signedTx = await signer.createAndSign(
      wallet,
      [message],
    );
    print(signedTx);

    final sender = TxSender.fromNetworkInfo(networkInfo);
    final result = await sender.broadcastTx(
      signedTx,
      mode: BroadcastMode.BROADCAST_MODE_ASYNC,
    );
    print(result);
  }

  final Wallet wallet = Wallet.random(
    NetworkInfo(
      bech32Hrp: "cred",
      grpcInfo: GRPCInfo(host: "http://10.0.2.2"),
      lcdInfo: LCDInfo(host: "http://10.0.2.2"),
    ),
  );
  // final Wallet wallet = Wallet.derive(
  //   [
  //     'play',
  //     'butter',
  //     'frown',
  //     'city',
  //     'voyage',
  //     'pupil',
  //     'rabbit',
  //     'wheat',
  //     'thrive',
  //     'mind',
  //     'skate',
  //     'turkey',
  //     'helmet',
  //     'thrive',
  //     'door',
  //     'either',
  //     'differ',
  //     'gate',
  //     'exhibit',
  //     'impose',
  //     'city',
  //     'swallow',
  //     'goat',
  //     'faint'
  //   ],
  //   NetworkInfo(
  //     bech32Hrp: "cosmos",
  //     grpcInfo: GRPCInfo(host: "http://10.0.2.2"),
  //     lcdInfo: LCDInfo(host: "http://10.0.2.2"),
  //   ),
  // );

  final networkInfo = NetworkInfo(
    bech32Hrp: "cosmos",
    grpcInfo: GRPCInfo(
      host: "http://10.0.2.2",
    ),
    lcdInfo: LCDInfo(host: "http://10.0.2.2"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print(wallet);
          final message = loan.MsgRequestLoan(
            amount: '1000token',
            collateral: '5000stake',
            creator: wallet.bech32Address,
            deadline: '20',
            fee: '10token',
          );
          print(message);
          final signer = TxSigner.fromNetworkInfo(networkInfo);
          final signedTx = await signer.createAndSign(
            wallet,
            [message],
          );
          print(signedTx);

          final sender = TxSender.fromNetworkInfo(networkInfo);
          final result = await sender.broadcastTx(signedTx);
          print(result);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
