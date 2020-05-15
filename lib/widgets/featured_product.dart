import 'package:flutter/material.dart';



class FeaturedProducts extends StatefulWidget {
  @override
  _FeaturedProductsState createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
          Category(
            imagelocation: 'images/paladins.jpg',
            imagecaption: 'Paladins',
            name: 'Paladins',
          ),


          Category(
            imagelocation: 'images/gta5.jpg',
            imagecaption: 'Gta V',
            name: 'GTA V',
          ),


          Category(
            imagelocation: 'images/fifa20.jpg',
            imagecaption: 'FIFA 20',
            name: 'FIFA 20',
          ),


           Category(
            imagelocation: 'images/pubg.jpg',
            imagecaption: 'PUBG',
            name: 'PUBG',
          ),

           Category(
            imagelocation: 'images/red.jpg',
            imagecaption: 'Red Dead Redemption 2',
            name: 'Red Dead Redemption 2',
          ),

           Category(
            imagelocation: 'images/Forza.jpg',
            imagecaption: 'Forza Horizon 4',
            name: 'Forza Horizon 4',
          ),

           Category(
            imagelocation: 'images/lol.jpg',
            imagecaption: 'League Of Legends',
            name: 'League Of Legends',
          ),

           Category(
            imagelocation: 'images/escapefromtarkov.jpg',
            imagecaption: 'Escape from tarkov',
            name: 'Escape From Tarkov',
          ),

           Category(
            imagelocation: 'images/rocket.jpg',
            imagecaption: 'Rocket League ',
            name: 'Rocket League',
          ),

           Category(
            imagelocation: 'images/dirtrally.jpg',
            imagecaption: 'Dirt Rally 2.0 ',
            name: 'Dirt Rally 2.0',
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;
  final String name;
  Category({
    this.imagelocation,
    this.imagecaption,
    this.name
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
        child: Text(name),
        alignment: Alignment.topCenter,
      )
    )
    )
    ),  
    );
  }
}