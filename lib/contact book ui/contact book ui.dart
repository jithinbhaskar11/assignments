import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Contacts(),));
}

class Contacts extends StatelessWidget {
  var names=['Achan','Amma','Kichu','Ammu','CD','Jabli','Buji','Ummi','Amie','Sanju'];
  var number=['9947209345','9747676306','9947203882','8129492943','8985756256','9764316598','7845129632','9986532145','88654258','9832147852'];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text('Contacts'),
      ),
      body:
      ListView(
        children: List.generate(10, (index) => Card(
          child: ListTile(
            title: Text(names[index]),
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            subtitle: Text(number[index]),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        )),
      ),
    );
  }
}
