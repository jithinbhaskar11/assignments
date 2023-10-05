import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Community_screen(),
  ));
}

class Community_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
                left: 20,
                top: 20,
                child: CircleAvatar(child: Icon(Icons.people,color: Colors.white,),backgroundColor: Colors.grey,)),
            Positioned(
              top: 40,
                left: 50,
                child: Icon(Icons.add_circle,color: Colors.teal,size:18,)),
            Positioned(
              top: 30,
                left: 80,
                child: Text('New community', style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),

          ],
        ),
      ),
    );
  }
}
