import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatefulWidget {
  const LottiePage({super.key});

  @override
  State createState() => _LottiePageState();
}

class _LottiePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nextgen Tutorial"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_WaQ8yMJuKt.json',
              //height: 200.0,
              repeat: true,
              reverse: true,
              animate: true,
            ),
            Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_raiw2hpe.json',
              height: 100,
              repeat: true,
              reverse: true,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}