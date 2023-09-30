import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: FaIcon(FontAwesomeIcons.ellipsisVertical),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/1287145/pexels-photo-1287145.jpeg?auto=compress&cs==1'),
                          fit: BoxFit.cover))),
            ),
            const Positioned(
              left: 150,
              bottom: 275,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 30,
                child: Icon(Icons.message),
              ),
            ),
            const Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/beckham.jpg'),
              ),
            ),
            const Positioned(
                bottom: 273,
                right: 250,
                child: CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.add,
                  ),
                )),
            Positioned(
                bottom: 150,
                left: 430,
                child: Text(
                  'David Beckham',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 30),
                )),
            const Positioned(
                bottom: 120,
                left: 465,
                child: Text('model / super star',style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}
