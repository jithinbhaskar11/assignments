import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music(),
  ));
}

class Music extends StatefulWidget {
  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  var playlist = [
    'assets/images/playlists/_ s t u d y _.jpeg',
    'assets/images/playlists/all time dance favs.jpeg',
    'assets/images/playlists/azhalinte.jpeg',
    'assets/images/playlists/Cartoons.jpeg',
    'assets/images/playlists/mazha.jpeg',
    'assets/images/playlists/download.jpeg',
    'assets/images/playlists/download (1).jpeg',
    'assets/images/playlists/fye beats.jpeg',
    'assets/images/playlists/nostalgia.jpeg',
    'assets/images/playlists/Playlist.jpeg'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            pinned: true,
            floating: true,
            title: Text(
              'Playlists',
              style: GoogleFonts.montserrat(
                  color: Colors.pink[100],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.black),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    hintText: 'Search....',
                    hintStyle: GoogleFonts.montserrat(color: Colors.pink[100]),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.pink[100],
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => StaggeredGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                      10,
                      (index) => StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(45),
                                  child: Image.asset(playlist[index])),

                            ),
                          )))),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                title: Text('Home'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                title: Text('Search'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.play_circle_sharp,color: Colors.white,),
                title: Text('Playlist'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.more_horiz,color: Colors.white,),
                title: Text('Menu'),
                selectedColor: Colors.pink[100])
          ]),
    );
  }
}
