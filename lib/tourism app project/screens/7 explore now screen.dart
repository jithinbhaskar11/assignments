
import 'package:assignment/tourism%20app%20project/data/tourism%20dummy%20data.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Tour_Explore(),
  ));
}


class Tour_Explore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   var id=ModalRoute.of(context)?.settings.arguments;
   var detail=details.firstWhere((detail) => detail['Id']==id);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(detail['explr image']))
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
