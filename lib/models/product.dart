import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergameapp/screens/games.dart';
class Product{
  static const ID = "id";
  static const Category= "category";
  static const Name = "name";
  static const Price = "price";
  static const Reviews = "reviews";
  static const Brand = "brand";
  static const Quantity = "quantity";
  static const Plattform = "plattform";
  static const Featured = "featured";
  static const Picture = "picture";
  Product();

  String _id;
  String _category;
  String _name;
  String _brand;
  String _picture;
  double _price;
  double _reviews;
  int _quantity;
  List _plattform;
  bool _featured;

  String get name => _name;
  String get brand => _brand;
  String get id => _id;
  String get category => _category;
  String get picture => _picture;
  double get price => _price;
  double get reviews => _reviews;
  int get quantity => _quantity;
  List get plattform => _plattform;
  bool get featured => _featured;

  Product.fromMap(Map<String, dynamic> data){
    _id = data[ID];
    _name = data[Name];
    _category = data[Category];
    _brand = data[Brand];
    _price = data[Price];
    _reviews = data[Reviews];
    _quantity = data[Quantity];
    _plattform = data[Plattform];
   // _featured = data[_featured];
    _picture = data[Picture];
  }
  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'name': _name,
      'category': _category,
      'brand': _brand,
      'picture': _picture,
      'price': _price,
      'reviews': _reviews,
      'quantity': _quantity,
      'plattform': _plattform,
    };
  }
}