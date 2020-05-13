import 'package:flutter/material.dart';
class Cartgames extends StatefulWidget {
  @override
  _CartgamesState createState() => _CartgamesState();
}

class _CartgamesState extends State<Cartgames> {
  var gamesonthecart = [
     { "name": "GTA V",
      "picture": "images/gta5.jpg",
      "Price": 14,
      "system":"PS4",
      "Quantity":"1",
    },
        { "name": "Dirt Rally 2.0",
      "picture": "images/dirtrally.jpg",
      "Price": 19,
      "system":"PC",
      "Quantity":"1",
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: gamesonthecart.length,
      itemBuilder: (context,index){
       return Singlecartgame(
         cartgamename: gamesonthecart[index]["name"],
         cartgamequantity: gamesonthecart[index]["qunatity"],
         cartgamesystem: gamesonthecart[index]["system"],
         cartgameprice: gamesonthecart[index]["price"],
         cartgamepicture: gamesonthecart[index]["picture"],
       );

      }
    );
  }
}

class Singlecartgame extends StatelessWidget {
  final cartgamename;
  final cartgamepicture;
  final cartgameprice;
  final cartgamesystem;
  final cartgamequantity;

  Singlecartgame({
    this.cartgamename,
    this.cartgamepicture,
    this.cartgameprice,
    this.cartgamequantity,
    this.cartgamesystem
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cartgamepicture),
        title: new Text(cartgamename),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Expanded(
                  child: new Text("System:"),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 5.0, 12.0, 5.0),
                  child: new Text(cartgamesystem, style: TextStyle(color: Colors.red),),),

                
              ],


            ),

          new Container(
            alignment: Alignment.topLeft,
            child:new Text("\$${cartgameprice}"),

          )
          ],
        ),

      ),
    );
  }
}