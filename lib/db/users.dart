import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergameapp/models/userdeat.dart';
import 'package:fluttergameapp/provider/appProvider.dart';

class UserServices{
  Firestore _firestore = Firestore.instance;
  String collection = "users";

  void createUser(Map data) {
    _firestore.collection(collection).document(data["userId"]).setData(data);
  }
}
/*getUser(Userdetail userdetail ) async{
  QuerySnapshot snapshot = Firestore.instance 
    .collection('users')
    .where('email', isEqualTo: userdetail.email); 
  
  List<Userdetail> _userstList=[];
  snapshot.documents.forEach((document) {
    Userdetail users = Userdetail.fromMap(document.data);
    _userstList.add(users);
  });

}*/



