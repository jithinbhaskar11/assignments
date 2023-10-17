
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home: Home_ffz(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home_ffz extends StatefulWidget {

  var titles={
    'OFFERS',
    'VEGETABLES',
    'FRUITS',
    'Exotic',
    'FRESH CUTS',
    'NUTRITION CHARGERS',
    'PACKED FLAVORS',
    'GOURMET SALADS'
  };

  @override
  State<Home_ffz> createState() => _Home_ffzState();
}
var titles=[
  'OFFERS',
  'VEGETABLES',
  'FRUITS',
  'Exotic',
  'FRESH CUTS',
  'NUTRITION CHARGERS',
  'PACKED FLAVORS',
  'GOURMET SALADS'
];
class _Home_ffzState extends State<Home_ffz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.greenAccent[700],
            pinned: false,
            floating: true,
            title: Text('FARMERS FRESH ZONE', style: GoogleFonts.mohave(fontWeight: FontWeight.bold),),
            actions: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 5,),
                Text('Kochi' ,style: TextStyle(fontSize: 18),),
                Icon(Icons.keyboard_arrow_down)
              ],),
            )],

            bottom: AppBar(
              backgroundColor: Colors.greenAccent[700],
              title: Container(height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Sarch for Vegetables, Fruits..',
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)
                    ),
                    hintText: titles[index]
                  ),
                ),
              ],
            ),
          ))),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) =>
              CarouselSlider(items: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/ff1.jpg'),
                    fit: BoxFit.cover)
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/ff2.jpg'),
                    fit: BoxFit.cover)
                  ),
                )
              ], options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                height: 200,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 2)
              )),
              childCount: 1
            )
          )],
      ),
    );
  }
}
