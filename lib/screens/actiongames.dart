import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttergameapp/screens/gamespcategory.dart';
import 'home.dart';
import 'games.dart';

class Actiongame extends StatefulWidget {
  @override
  _ActiongameState createState() => _ActiongameState();
}

class _ActiongameState extends State<Actiongame> {
  
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: _onBackPressed,

    child: new Scaffold(
      body: StreamBuilder(
      stream: Firestore.instance.collection('products').where('category',isEqualTo: 'Action').snapshots(),
      builder: (context,snapshot){
        if(!snapshot.hasData) return Text('No data found');
        return ListView.builder(
        itemCount: snapshot.data.documents.length,
        itemBuilder:(context,index){
          DocumentSnapshot course=snapshot.data.documents[index];
           return Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.width / 8,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.green,
                          backgroundImage: NetworkImage(course['picture']),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 14,),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        alignment: Alignment(-1, 0),
                        child: Text(course['name'],style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),
                        )
                      )
                    ],
                  ),
                 
                ],
              ),
            ));
          
        }
        );}
        )
        )); 
  }

  Future<bool> _onBackPressed() {
     return showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        title: Text("Choose a page"),
        actions: <Widget>[
          FlatButton(
            child: Text("Home Page"),
            onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()))
          ),
           FlatButton(
            child: Text("Previous Page"),
            onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => categorygames()))
          )
        ],
      ));
  }
}