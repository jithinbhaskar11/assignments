import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music(),
  ));
}
class Music extends StatelessWidget {

  var playlist=[
    'assets/images/playlists/_ s t u d y _.jpeg',
    'assets/images/playlists/all time dance favs.jpeg',
    'assets/images/playlists/Cartoons.jpeg',
    'assets/images/playlists/download.jpeg',
    'assets/images/playlists/download (1).jpeg',
    'assets/images/playlists/F&O Fabforgottennobility.jpeg',
    'assets/images/playlists/fye beats.jpeg',
    'assets/images/playlists/Melodic Memories.jpeg',
    'assets/images/playlists/nostalgia.jpeg',
    'assets/images/playlists/Playlist.jpeg'
  ];

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
            title: Text('Playlists',style: GoogleFonts.montserrat(color: Colors.pink[100],
            fontSize: 40, fontWeight: FontWeight.bold),),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.black
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    hintText: 'Search....',
                    hintStyle: GoogleFonts.montserrat(color: Colors.pink[100]),
                    suffixIcon: Icon(Icons.search,color: Colors.pink[100],),
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) =>  StaggeredGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(10, (index) => StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: Image.asset(playlist[index]),
                      ),
                    ))

                )),),
            // child: StaggeredGrid.count(crossAxisCount: 2,
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 10,
            // children: List.generate(10, (index) => StaggeredGridTile.count(
            //     crossAxisCellCount: 2,
            //     mainAxisCellCount: 2,
            //     child: Card(
            //       child: Image.asset(playlist[index]),
            //     ))
            //
            // )),
          )
        ],
      ),
    );
  }
}
