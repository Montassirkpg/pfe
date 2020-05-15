  
import 'dart:io';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttergameapp/screens/about.dart';
import 'package:fluttergameapp/screens/games.dart';
import 'package:fluttergameapp/screens/gamespcategory.dart';
import 'package:fluttergameapp/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _Back,
     child: new Scaffold(
       appBar: new AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(202, 240, 248, 1)),
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(3, 4, 94, 1),
        title: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[100],
          elevation: 0.0,
        ),
        actions: <Widget>[

          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromRGBO(202, 240, 248, 1),
              ),
              onPressed: _lunchURL,)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Games()));
              },
              child: ListTile(
                title: Text('Games'),
                leading: Icon(Icons.games,color: Color.fromRGBO(154, 1, 1, 1),),

              ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => categorygames()));
              },
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard,color: Color.fromRGBO(58, 134, 255, 1),),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Search()));
              },
              child: ListTile(
                title: Text('Search'),
                leading: Icon(Icons.search,color: Colors.green,),
              ),
            ),

 

            InkWell(
              onTap: (){
                FirebaseAuth.instance.signOut().then((value){
                });
              },
              child: ListTile(
                title: Text('Log out'),
                leading: Icon(Icons.transit_enterexit, color: Colors.grey,),
              ),
            ),
             Divider(),
                    InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => About()));
            },
                      child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.green),
            ),
          ),

          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Stack(children: <Widget>[
              Container(
                 height: 560,
                 width: 600,
                 child: new Carousel(
                  images: [
                   AssetImage('images/image1.jpg'),
                   AssetImage('images/image2.jpg'),
                   AssetImage('images/image3.jpg'),
                   AssetImage('images/image4.jpg'),
                   AssetImage('images/image5.jpg'),
                   AssetImage('images/image6.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
      )
      ),
      ]
    ),
    )
    ],
    )
    ));
  }

  _lunchURL() async{
    const url = 'https://www.instant-gaming.com/en/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
  }

  Future<bool> _Back() {
    return showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        title: Text("Do you really want to exit the app?"),
        actions: <Widget>[
          FlatButton(
            child: Text("No"),
            onPressed: ()=>Navigator.pop(context,false),
          ),
           FlatButton(
            child: Text("Yes"),
            onPressed: ()=>exit(0)
          )
        ],
      ));
      
  }
}