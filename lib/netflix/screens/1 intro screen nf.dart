import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


void main(){
  runApp(MaterialApp(
    home: Intro_Netflix(),
  ));
}

class Intro_Netflix extends StatefulWidget {
  const Intro_Netflix({super.key});

  @override
  State<Intro_Netflix> createState() => _Intro_NetflixState();
}

class _Intro_NetflixState extends State<Intro_Netflix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset('assets/animation/NF black.json'),
      ),
    );
  }
}
