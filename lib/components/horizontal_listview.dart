import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'images/paladins.jpg',
            imagecaption: 'Paladins',
          ),


          Category(
            imagelocation: 'images/gta5.jpg',
            imagecaption: 'Gta V',
          ),


          Category(
            imagelocation: 'images/fifa20.jpg',
            imagecaption: 'FIFA 20',
          ),


           Category(
            imagelocation: 'images/pubg.jpg',
            imagecaption: 'PUBG',
          ),


           Category(
            imagelocation: 'images/escapefromtarkov.jpg',
            imagecaption: 'Escape from tarkov',
          ),

           Category(
            imagelocation: 'images/red.jpg',
            imagecaption: 'Red Dead Redemption 2',
          ),

           Category(
            imagelocation: 'images/Forza.jpg',
            imagecaption: 'Forza Horizon 4',
          ),

           Category(
            imagelocation: 'images/lol.jpg',
            imagecaption: 'League Of Legends',
          ),

           Category(
            imagelocation: 'images/escapefromtarkov.jpg',
            imagecaption: 'Escape from tarkov',
          ),

           Category(
            imagelocation: 'images/rocket.jpg',
            imagecaption: 'Rocket League ',
          ),

           Category(
            imagelocation: 'images/dirtrally.jpg',
            imagecaption: 'Dirt Rally 2.0 ',
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;
  Category({
    this.imagelocation,
    this.imagecaption
  }

  );
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 170.0,
      child: ListTile(
      title: Image.asset(imagelocation,
      width: 170.0,
      height: 150.0,),
      subtitle: Container(
        alignment: Alignment.topCenter,
      )
    )
    )
    ),  
    );
  }
}