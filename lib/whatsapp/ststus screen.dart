import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    'just now',
    'today , 7:30pm',
    'today, 1:24pm',
    'today, 8:11am',
    'today, 7.59am',
    'yesterday, 10:01pm',
    'yesterday, 8:37pm',
    'yesterday, 6:53pm',
    'yesterday, 5:13pm',
    'yesterday, 8:30am'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 20,
              left: 20,
              child: CircleAvatar(
                child: Icon(
                  Icons.person,
                ),
                backgroundColor: Colors.black26,
              )),
          Positioned(
              top: 36,
              left: 45,
              child: Icon(
                Icons.add_circle,
                color: Colors.teal,
                size: 20,
              )),
          Positioned(
              top: 30,
              left: 65,
              child: Text(
                'Your updates',
                style: GoogleFonts.roboto(color: Colors.teal),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 15),
            child: Text('Recent Updates'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: ListView.builder(
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Icon(Icons.perm_media_outlined)),
                    title: Text(names[index]),
                    subtitle: Text(time[index]),

                  );
                }),
          )
        ],
      ),
    );
  }
}
