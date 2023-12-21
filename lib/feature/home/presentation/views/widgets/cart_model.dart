import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/models/product_model.dart';


class CartModel extends ChangeNotifier{
  late  ProductModel   productModel;

  final List<int> listOfItems = [];

  ProductModel get  product => productModel;


  set product(ProductModel  product){
    productModel =  product;
    notifyListeners();
  }

  // // List<ProductModel> get items => listOfItems.map((id)=> ProductModel.getById(id)).toList();
  //
  // int get totalPrice =>product.fold(0, (total, current) => total+ current.price);
  List<ProductModel> get items => listOfItems.map((id)=> productModel.getById(id)).toList();

  int get totalPrice => items.fold(0, (total, current) => total+ current.price);

  void add(ProductModel ProductModel){
    listOfItems.add(ProductModel.id);
    notifyListeners();
  }

  void remove(ProductModel ProductModel){
    listOfItems.remove(ProductModel.id);
    notifyListeners();
  }
}