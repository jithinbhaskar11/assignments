import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Payment_done extends StatelessWidget {
  const Payment_done({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animation/payment success.json'),
      ),
    );
  }
}
