import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergameapp/screens/games.dart';
class UserModel{
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  static const STRIPE_ID = "stripeId";
  static const CART = "cart";



  String _name;
  String _email;
  String _id;


//  getters
  String get name => _name;
  String get email => _email;
  String get id => _id;

//  public variable
  List cart;
  int totalCartPrice;

  UserModel.fromSnapshot(DocumentSnapshot snapshot){
    _name = snapshot.data[NAME];
      _email = snapshot.data[EMAIL];
    _id = snapshot.data[ID];
  }

// List<CartItemModel> _convertCartItems(List<Map> cart){
//    List<CartItemModel> convertedCart = [];
//    for(Map cartItem in cart){
//      convertedCart.add(CartItemModel.fromMap(cartItem));
//    }
//    return convertedCart;
//  }
}