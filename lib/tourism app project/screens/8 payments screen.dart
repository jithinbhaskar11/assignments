import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(MaterialApp(home: Tour_Payment(),));
}

class Tour_Payment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text('Make your payment here!', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.googlePay,color: Colors.red,size: 35,),
                    title: Text('Google pay',style: TextStyle(fontWeight: FontWeight.bold,),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.purple,size: 20,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.ccAmazonPay,color: Colors.blue,size: 35,),
                    title: Text('Amazon pay pay',style: TextStyle(fontWeight: FontWeight.bold,),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.purple,size: 20,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.paypal,color: Colors.red,size: 35,),
                    title: Text('Paypal',style: TextStyle(fontWeight: FontWeight.bold,),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.purple,size: 20,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.creditCard,color: Colors.green,size: 35,),
                    title: Text('Pay via Card',style: TextStyle(fontWeight: FontWeight.bold,),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.purple,size: 20,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
