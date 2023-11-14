import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'google signin home.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey:"AIzaSyBq0_9NA8vwR2lXD9-3lp-GCD94vjazOIw",
        appId:"1:970237208288:android:e70d507e97172e77a3d285",
        messagingSenderId: "",
        projectId: "fir-flutter-95574",
      )
  );
  runApp(MaterialApp(home: Gmail_Signin(),));
}

class Gmail_Signin extends StatefulWidget {
  const Gmail_Signin({super.key});

  @override
  State<Gmail_Signin> createState() => _Gmail_SigninState();
}

class _Gmail_SigninState extends State<Gmail_Signin> {

  Future <void> SigninWithGoogle()async{
    FirebaseAuth auth= FirebaseAuth.instance;

    final GoogleSignIn googleSignIn=GoogleSignIn();

    final GoogleSignInAccount? googleUser= await googleSignIn.signIn();

    final GoogleSignInAuthentication googleAuth= await googleUser!.authentication;

    final AuthCredential credential= GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken
    );

    final UserCredential userCredential= await auth.signInWithCredential(credential);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in with Google'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () async{
              await SigninWithGoogle();
              if(mounted){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gmail_Verification_Home()));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.google,color: Colors.red,),
                title: Text('Continue with google'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
