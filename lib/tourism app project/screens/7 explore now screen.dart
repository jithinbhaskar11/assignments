//
// import 'package:assignment/tourism%20app%20project/data/tourism%20dummy%20data.dart';
// import 'package:flutter/material.dart';
//
//
// void main(){
//   runApp(MaterialApp(
//     home: Tour_Explore(),
//   ));
// }
//
//
// class Tour_Explore extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//    var id=ModalRoute.of(context)?.settings.arguments;
//    var data=details.firstWhere((data) => data['Id']==id);
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 350,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(image: NetworkImage(data['explr image']),fit: BoxFit.cover)
//                 ),
//               ),
//               Positioned(
//                   top: 280,
//                   left: 15,
//                   child: Text( data['explr title'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
//               ),
//               // Container(
//               //   height: 50,
//               //   width: 200,
//               //   decoration: BoxDecoration(
//               //     borderRadius: BorderRadius.circular(50),color: Colors.grey
//               //   ),
//               //   child: Text(data['reviews']),
//               // )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//

import 'package:assignment/tourism%20app%20project/data/tourism%20dummy%20data.dart';
import 'package:assignment/tourism%20app%20project/screens/8%20payments%20screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main(){
  runApp(MaterialApp(home: Tour_Explore(),));
}

class Tour_Explore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&q=80&w=1332&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover)
                ),
              ),
              Positioned(
                  top: 200,
                  left: 10,
                  child: Text('Hôtel du Louvre,Place Andre Malraux, Paris',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 5.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                    )
              ),
              Positioned(
                top: 230,
                left: 10,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text('8.5/1265 reviews',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                ),
              ),
              Positioned(
                  top: 250,
                  right: 10,
                  child: Icon(Icons.favorite_border,color: Colors.white,))
            ],
          ),
    Row(
      children: [
        RatingBar.builder(
        initialRating: 4,
        minRating: 1,
        itemSize: 20,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0), // Padding between items
        itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.purple,
        ),
        onRatingUpdate: (rating) {
        print("Rating: $rating");
        },
        ),
      ],
    ),

          Row(
            children: [
              Icon(Icons.location_on,color: Colors.grey,),
              Text('1 km from Eifil tower',style:TextStyle(color: Colors.grey),),
              SizedBox(width: 250,),
              Column(
                children: [
                  Text('200\$',style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('/per night',style: TextStyle(color: Colors.grey,fontSize: 12),)
                ],
              ),

            ],
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: ()=>
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tour_Payment()))
            ,
            child: Container(
              height: 50,
              width: 400,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text('Book now',style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("'Ideally located between the Louvre and the Opéra Garnier, Hôtel du Louvre invites you to discover the City of Lights like a true Parisian. Our address steeped in history encourages the art of rambling, for a memorable stay,Welcome to your Fairbanks hotel on the Chena River, Pike's Waterfront Lodge. Pike's Waterfront Lodge offers comfortable rooms and cabins many with scenic views, an aromatherapy steam room, riverside decks, restaurant, a comfortable lounge, and wifi in the public areas and sleeping rooms in main buildings. All rooms have refrigerators and microwaves and are non smoking. We offer Aveda aromatherapy bathroom amenities.'"),
          )
        ],
      ),
    );
  }
}

