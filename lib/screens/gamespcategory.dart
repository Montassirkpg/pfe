import 'package:flutter/material.dart';
import 'package:fluttergameapp/screens/actiongames.dart';
import 'package:fluttergameapp/screens/home.dart';
import 'package:fluttergameapp/screens/racinggame.dart';
import 'package:fluttergameapp/screens/roleplaygames.dart';
import 'package:fluttergameapp/screens/simgames.dart';
import 'package:fluttergameapp/screens/sportsgames.dart';
class categorygames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 4, 94, 1),
        title: Text('Availble Categories',style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.end,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage())),),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
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
    );
  }
}