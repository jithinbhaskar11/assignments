import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home: Status_screen(),
  ));
}

class Status_screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: 20,
                left: 20,
                child: CircleAvatar(child: Icon(Icons.person,),backgroundColor: Colors.black26,)),
            Positioned(
              top: 36,
                left: 45,
                child: Icon(Icons.add_circle,color: Colors.teal,size: 20,)),
            Positioned(
              top: 30,
                left: 65,
                child: Text('Your updates',style: GoogleFonts.roboto(color: Colors.teal),)),

             Padding(
               padding: const EdgeInsets.only(top: 70.0,left: 15),
               child: Text('Recent Updates'),
             ),
            //ListView.builder(itemBuilder: itemBuilder)
          ],
        ),
      ),
    );
  }
}
