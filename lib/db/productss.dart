import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergameapp/models/product.dart';
import 'package:fluttergameapp/provider/appProvider.dart';

getProducts(AppProvider appProvider) async{
  QuerySnapshot snapshot = await Firestore.instance 
    .collection('products')
    .orderBy("price", descending: true)
    .getDocuments();
  
  List<Product> _productList=[];
  snapshot.documents.forEach((document) {
    Product product = Product.fromMap(document.data);
    _productList.add(product);
  });

  appProvider.productList = _productList;
}
