import 'package:assignment/login%20and%20signup%20ui/sign%20in%20page.dart';
import 'package:assignment/login%20and%20signup%20ui/sign%20up%20page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_signup extends StatelessWidget {
  const Login_signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/tourism logo2.png',height: 250,width: 250,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sign_in_page()));
              },
              color: Colors.lightBlueAccent,
                child: ListTile(
                  title: Text('Login'),
                  trailing: Icon(Icons.login),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sign_up()));
              },
                color: Colors.green,
                child: ListTile(
                  title: Text('Register'),
                  trailing:Icon(Icons.app_registration),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(onPressed: (){},
                color: Colors.blue,
                child: ListTile(
                  title: Text('Login with Facebook'),
                  trailing: FaIcon(FontAwesomeIcons.facebook),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(onPressed: (){},
                color: Colors.red,
                child: ListTile(
                  title: Text('Login with Google'),
                  trailing: FaIcon(FontAwesomeIcons.google),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
