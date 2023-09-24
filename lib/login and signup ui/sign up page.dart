import 'package:flutter/material.dart';
import 'sign in page.dart';

void main() {
  runApp(MaterialApp(
    home: Sign_up(),
  ));
}

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  String? cpass;
  bool passwordhidden = true;
  bool cpasswordhiden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
              ),
              Text('Create an account,its free!'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Email ID',
                      helperText: 'Field must not be empty',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.visibility_off),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passwordhidden == true) {
                                  passwordhidden = false;
                                } else {
                                  passwordhidden = true;
                                }
                              });
                            },
                            icon: passwordhidden == true
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)),
                        labelText: 'password',
                        helperText:
                            'password must cintain atleast 6 characters',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: (password) {
                      pass = password;
                      if (password!.isEmpty || password.length < 6) {
                        return 'password must not be empty and must contain atleast 6 characters';
                      } else {
                        return null;
                      }
                    },
                    obscureText: passwordhidden,
                    obscuringCharacter: '*'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 15),
                child: TextFormField(
                  validator: (cpassword) {
                    cpass = cpassword;
                    if (cpassword!.isEmpty || cpassword != pass) {
                      return 'password must be same';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (cpasswordhiden == true) {
                                cpasswordhiden = false;
                              } else {
                                cpasswordhiden = true;
                              }
                            });
                          },
                          icon: cpasswordhiden == true
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),

                      prefixIcon: Icon(Icons.visibility_off),
                      labelText: 'Confirm password',
                      helperText: 'Please  re-enter you password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  obscureText: cpasswordhiden,
                  obscuringCharacter: '*',
                ),
              ),
              Container(
                height: 60,
                width: 1000,
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Sign_in_page()));
                      }
                    },
                    child: Text(
                      'Sign Up',
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)))),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Sign_in_page()));
                  },
                  child: Text('Do you have an account? Login'))
            ],
          ),
        ),
      ),
    );
  }
}
