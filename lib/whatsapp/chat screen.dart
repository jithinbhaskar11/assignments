import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.teal),
    home: Chat_screen(),
  ));
}

class Chat_screen extends StatelessWidget {
  var dp = [];

  var names = [
    'Ammu',
    'CD',
    'Buji',
    'Ummi',
    'Jabli',
    'Amie',
    'Kuttan',
    'Jithin',
    'Tony',
    'maeve'
  ];
  var sub = [
    'boi',
    'seri kizzi bassuu',
    'Daa',
    'ok',
    'Kumarettaa',
    'sett',
    'yeah!!',
    'im the best',
    'bye'
  ];

  var time = [
    '4:34',
    '4:10',
    '3:22',
    '3:20',
    '1:59',
    '1:48',
    '1:16',
    '12:48',
    '10:11',
    '8:26'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
      ),
      body: ListView(
          children: List.generate(
              10,
              (index) => Card(
                    child: ListTile(
                      leading: Image.asset(dp[index]),
                    ),
                  ))),
    );
  }
}
