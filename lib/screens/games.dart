
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttergameapp/db/productss.dart';
import 'package:fluttergameapp/models/product.dart';
import 'package:fluttergameapp/provider/appProvider.dart';
import 'package:fluttergameapp/screens/detail.dart';
import 'package:fluttergameapp/screens/home.dart';
import 'package:provider/provider.dart';
class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  void initState(){
    super.initState();
    AppProvider appProvider = Provider.of<AppProvider>(context, listen: false);
    getProducts(appProvider);
  }
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
    Future<void> _refreshList() async{
      getProducts(appProvider);
    }
     return Scaffold(
      body: ListView.builder(
        itemCount: appProvider.productList.length,
        itemBuilder:(BuildContext context,int index)=> Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
          child: Card(
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
                          backgroundImage: NetworkImage(appProvider.productList[index].picture),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 14,),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        alignment: Alignment(-1, 0),
                        child: Text(appProvider.productList[index].name,style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),)
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    child: FlatButton(onPressed: (){
                      appProvider.currentProduct= appProvider.productList[index];
                       Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                   return DetailPage();}));
                    },
                    color: Colors.red[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                     child: Text("More",style: TextStyle(color:Colors.white),)
                     ),
                  ),
                ],
              ),
            ),
          ),
        ) 
      )
      
    );
  }
}