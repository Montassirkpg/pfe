import 'package:flutter/material.dart';
import 'package:fluttergameapp/screens/actiongames.dart';
import 'package:fluttergameapp/screens/home.dart';
import 'package:fluttergameapp/screens/racinggame.dart';
import 'package:fluttergameapp/screens/roleplaygames.dart';
import 'package:fluttergameapp/screens/simgames.dart';
import 'package:fluttergameapp/screens/sportsgames.dart';
class categorygames extends StatefulWidget {
  @override
  _categorygamesState createState() => _categorygamesState();
}

class _categorygamesState extends State<categorygames> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _Back,
      child:
     Scaffold(
      body: Column(
        children: <Widget>[
          Divider(),
          Divider(),
          new FlatButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Actiongame()));
          },
           child: Text("Action games",style: TextStyle(color:Color.fromRGBO(116, 0, 1, 1),fontSize: 30),textAlign: TextAlign.center,)),
           Divider(),
            new FlatButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Rpgame()));
          },
           child: Text("Role play games",style: TextStyle(color:Color.fromRGBO(116, 0, 1, 1),fontSize: 30),textAlign: TextAlign.center,)),
           Divider(),
            new FlatButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Simgame()));
          },
           child: Text("Simulation games",style: TextStyle(color:Color.fromRGBO(116, 0, 1, 1),fontSize: 30),textAlign: TextAlign.center,)),
           Divider(),
            new FlatButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Racegame()));
          },
           child: Text("Racing games",style: TextStyle(color:Color.fromRGBO(116, 0, 1, 1),fontSize: 30),textAlign: TextAlign.center,)),
           Divider(),
            new FlatButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sportgame()));
          },
           child: Text("Sport games",style: TextStyle(color:Color.fromRGBO(116, 0, 1, 1),fontSize: 30),textAlign: TextAlign.center,))
        ],
      ),
    ));
  }

  Future<bool> _Back() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}