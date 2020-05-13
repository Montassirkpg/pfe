import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergameapp/screens/games.dart';
class Userdetail{
  static const NameUser = "name";
  static const EmailUser ="email";


 
  String _email;
  String _name;


  String get name => _name;
  String get email => _email;

  Userdetail.fromMap(Map<String, dynamic> data){
    _name = data[NameUser];
    _email = data[EmailUser];
  }
  Map<String, dynamic> toMap() {
    return {
      'name': _name,
      'email': _email,
    };
  }
}