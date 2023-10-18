import 'dart:async';

import 'package:assignment/tourism%20app%20project/screens/2%20login%20signup.dart';
import 'package:assignment/tourism%20app%20project/screens/3%20login%20screen.dart';
import 'package:assignment/tourism%20app%20project/screens/4%20sign%20up%20screen.dart';
import 'package:assignment/tourism%20app%20project/screens/5%20home%20screen.dart';
import 'package:assignment/tourism%20app%20project/screens/6%20details%20screen.dart';
import 'package:assignment/tourism%20app%20project/screens/7%20explore%20now%20screen.dart';
import 'package:assignment/tourism%20app%20project/screens/8%20payments%20screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Introscreen(),
    routes: {
       'login':(context)=>Tour_Signin(),
       'register':(context)=>Tour_Sign_up(),
       'home':(context)=>Tour_Home(),
      'details':(context)=> Tour_details(),
       'explore':(context)=>Tour_Explore(),
       'payment':(context)=>Tour_Payment()
    }
  ));
}

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('login');
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/tourism logo2.png'),
      ),
    );
  }
}
