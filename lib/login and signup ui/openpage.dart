import 'package:flutter/material.dart';
import 'sign in page.dart';
import 'sign up page.dart';

void main() {
  runApp(MaterialApp(
    home: Openpage(),
  ));
}

class Openpage extends StatefulWidget {
  @override
  State<Openpage> createState() => _OpenpageState();
}

class _OpenpageState extends State<Openpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80),
                Text(
                  'Hello There!',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
                Text(
                    'Automatic identity verification which enables you to verify your identity'),
                Image.asset(
                  'assets/images/costumer care lady.jpg',
                  height: 400,
                  width: 400,
                ),
                Container(
                  width: 700,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Sign_in_page()));
                    },
                    child: Text('Log in'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45))),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
                  width: 700,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Sign_up()));
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45))),
                  ),
                ),
                SizedBox(height: 60)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
