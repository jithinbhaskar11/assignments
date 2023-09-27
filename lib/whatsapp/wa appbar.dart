import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: Wappbar(),
  ));
}

class Wappbar extends StatelessWidget {
  const Wappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return[
                  PopupMenuItem(child: Text('New group')),
                PopupMenuItem(child: Text('New broadcast')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Starred meaasages')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(child: Text('Settings'))
              ];
            })
          ],
          bottom:PreferredSize(child: Container(
            child: TabBar(tabs: [
              Container(child: Icon(Icons.people),),
              Container(child: Text('Chats'),),
              Container(child: Text('Updates'),),
              Container(child: Text('Calls'),)
            ],
            ),
          ),
              preferredSize: Size.fromHeight(AppBar().preferredSize.height)) ,
        ),
        // body: TabBarView(
        //   children: [],
        // ),
      ),
    );
  }
}
