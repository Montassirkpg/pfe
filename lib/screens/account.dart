import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Account deatils"),
      ),
      body: StreamBuilder(
      stream: Firestore.instance.collection('users').where('name',isEqualTo: 'marine').snapshots(),
      builder: (context,snapshot){
        if(!snapshot.hasData) return Text('Loading data ... please wait..');
        return ListView.builder(
          itemCount: snapshot.data.documents.length,
          itemBuilder: (context,index){
            DocumentSnapshot course=snapshot.data.documents[index];
            return ListTile(
              leading: Text(course['name']),
              subtitle: Text(course['email']),  
            );
          },
        );
      },
    ),
    );
  }
}