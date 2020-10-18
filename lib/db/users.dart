import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergameapp/models/userdeat.dart';
import 'package:fluttergameapp/models/userdeat.dart';
import 'package:fluttergameapp/provider/appProvider.dart';

class UserServices{
  Firestore _firestore = Firestore.instance;
  String collection = "users";

  void createUser(Map<String, dynamic> values) {
    String id = values["id"];
    _firestore.collection(collection).document(id).setData(values);
  }
   Future<UserModel> getUserById(String id) => _firestore.collection(collection).document(id).get().then((doc){
    return UserModel.fromSnapshot(doc);
  });
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



