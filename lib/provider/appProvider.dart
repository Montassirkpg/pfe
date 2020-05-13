import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttergameapp/db/productss.dart';
import 'package:fluttergameapp/models/product.dart';


class AppProvider with ChangeNotifier{
  List<Product> _featureProducts=[];
  Product _currentProduct;
  UnmodifiableListView<Product> get productList => UnmodifiableListView(_featureProducts);
  Product get currentProduct => _currentProduct;
  set productList(List<Product> productList){
    _featureProducts = productList;
    notifyListeners();
  }
  set currentProduct(Product product){
    _currentProduct = product;
    notifyListeners();
  }
}
