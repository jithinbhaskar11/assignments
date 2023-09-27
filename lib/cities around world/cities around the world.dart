import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Cities(),
  ));
}

class Cities extends StatelessWidget {
  var names = [
    'Barcelona',
    'Berlin',
    'Dubai',
    'London',
    'Madrid',
    'New delhi',
    'New york',
    'Paris',
    'Rio de janeiro',
    'Tokyo'
  ];
  var pics = [
    'assets/images/barcelona.jpeg',
    'assets/images/berlin (1).jpeg',
    'assets/images/Dubai.jpeg',
    'assets/images/london.jpeg',
    'assets/images/Madrid, Spain.jpeg',
    'assets/images/new delhi.jpeg',
    'assets/images/new york.jpeg',
    'assets/images/paris.jpeg',
    'assets/images/rio.png',
    'assets/images/tokyo.jpeg'
  ];
  var country = [
    'Spain',
    'Germany',
    'U.A.E',
    'England',
    'Spain',
    'India',
    'U.S.A',
    'France',
    'Brazil',
    'Japan'
  ];
  var population = [
    'population: 1.6M',
    'population: 3.9M',
    'population: 3.6M',
    'population: 8.8M',
    'population: 3.3M',
    'population: 35M',
    'population: 8.8M',
    'population: 2.1M',
    'population: 6.7M',
    'population: 14M',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent,
        title: Text('Cities around the world'),
        centerTitle: true,
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: Container(
                    color: Colors.orange,
                    child: ListTile(
                      leading: Container(
                        height: 100,
                         width: 100,
                         decoration: BoxDecoration(
                             image: DecorationImage(fit: BoxFit.cover,
                                 image: AssetImage(pics[index]))),
                       ),



                      title: Text(names[index]),
                      subtitle: Column(
                        children: [
                          Text(country[index]
                    ),
                          Text(population[index])
                        ],
                      ),
                  ),
                )),
      ),
    ));
  }
}
