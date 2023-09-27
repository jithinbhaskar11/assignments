import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Status_screen(),
  ));
}

class Status_screen extends StatelessWidget {
  var names = [
    'Ammu',
    'Jabli',
    'Ummi',
    'Maalu',
    'Jithu',
    'Jithin',
    'Buji',
    'Amie',
    'Gopi',
    'Jarvis'
  ];
  var time = [
    'yesterday, 8:30pm',
    'yesterday, 7:30pm',
    'yesterday, 1:24pm',
    'yesterday, 8:11am',
    'yesterday, 7.59am',
    '24/9/23, 10:01pm',
    '24/9/23, 8:37pm',
    '23/9/23, 6:53pm',
    '23/9/23, 5:13pm',
    '21/9/23, 8:30am'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.link,
              ),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Recents',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ListView.builder(
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(names[index]),
                    subtitle: Row(
                      children: [Icon(Icons.call_missed,color: Colors.red,),
                        Text('yesterday, 8:30pm'),
                      ],
                    ),
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Dubai.jpeg')),
                trailing: Column(
                  children: [
                    Icon(Icons.call)
                  ],
                ));
              })
        ],
      ),
    );
  }
}
