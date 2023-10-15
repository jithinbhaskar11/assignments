import 'package:assignment/ui%20using%20refractoring%20widget/refractoring%20widget.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Grid_with_refractoring_widget() ,
    debugShowCheckedModeBanner: false,
  ));
}
class Grid_with_refractoring_widget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended for you', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_circle_left_rounded),
        actions: [const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(Icons.settings_input_composite_rounded),
        )],
      ),
      backgroundColor: Colors.black,
      body: 
      GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
      children: [
        Custom_Card(image: const NetworkImage('https://images.unsplash.com/photo-1695753648663-72cc4dd99449?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
            price: '150\$',
            rating: 4.5,
            icon: Icons.favorite_border,
            sale: '506 sales',
            click: (){},
          name: 'Trendy Sports Running Running Shoes For Men ',),
        Custom_Card(image: const NetworkImage('https://media.istockphoto.com/id/856317698/photo/black-and-white-retro-men-wrist-watch-on-black-leather-background-old-men-wrist-watch.jpg?s=2048x2048&w=is&k=20&c=f8YAsyV8meV-VAbgGE3KOOq81Ga6E6lrZ07LFPXNyXA='),
            name:"Men's watch with leather strap ",
            price: '300\$',
            rating: 4,
            icon: Icons.favorite_border,
            sale: '1156 sales',
            click: (){}),
        Custom_Card(image: const NetworkImage('https://media.istockphoto.com/id/664440266/photo/black-fashion-woman-clutch-ladies-handbag.jpg?s=2048x2048&w=is&k=20&c=xZMU1Un1lEaqSY2-CM8xFjtfY4-eXhPVWjTJGKVOCgc='),
            name: 'aesthetic chain strap on a womens bag',
            price: '250\$',
            rating: 3.5,
            icon: Icons.favorite_border,
            sale: '336 sales',
            click: (){}),
        Custom_Card(image: const NetworkImage('https://media.istockphoto.com/id/502257430/photo/closeup-of-perfume-bottle.jpg?s=2048x2048&w=is&k=20&c=twduV378owIOT6BOSUmww9VV1m-hZYWpd_R5GnD4cwY='),
            name: 'THE MAN Black perfume Eau de Toilette 50 ml(Men)',
            price: '299\$',
            rating: 4.5,
            icon: Icons.favorite_border,
            sale: '6548 sales',
            click: (){}),
        Custom_Card(image: const NetworkImage('https://media.istockphoto.com/id/467533204/photo/mans-legs.jpg?s=2048x2048&w=is&k=20&c=4fj0gNv3JvvSThqlezq-PPd8jZKGKF5Tc6J2PgbSrm0='),
            name: "Men's cargo jeans",
            price: '99\$',
            rating: 4,
            icon: Icons.favorite_border,
            sale: '1854 sales',
            click: (){}),
        Custom_Card(image: const NetworkImage('https://media.istockphoto.com/id/1324164168/photo/short-sleeve-round-neck-t-shirt.jpg?s=2048x2048&w=is&k=20&c=13wdsvwL4K06THB_Gf2M4jBHQWg_PyzR06_27ONmn-c='),
            name: "Men's T shirt blue",
            price: '99\$',
            rating: 3,
            icon: Icons.favorite_border,
            sale: '3685 sales',
            click: (){})
      ],
      ),
    );
  }
}
