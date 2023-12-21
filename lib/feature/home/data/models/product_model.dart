import 'package:flutter/material.dart';

class ProductModel {
  late final String image, title, description;
  late final int price, size, id;
  late final Color color;

  ProductModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});

  ProductModel getById(int id) {
    return  ProductModel(image: '', title: '', description: '',
        price: price, size: size, id: id, color: color);
  }
}

List<ProductModel> products = [
  ProductModel(
      id: 1,
      title: "silk satin",
      price: 234,
      size: 50*50,
      description: dummyText,
      image: "assets/images/scarf_1.png",
      color: const Color(0xFF3D82AE)),
  ProductModel(
      id: 2,
      title: "Belt Bag",
      price: 200,
      size: 80*80,
      description: dummyText,
      image: "assets/images/scarf_2.png",
      color: const Color(0xFFD3A984)),
  ProductModel(
      id: 3,
      title: "Hanscarf Top",
      price: 234,
      size: 100*100,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  ProductModel(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 100*150,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  ProductModel(
      id: 5,
      title: "shifoon scarf",
      price: 210,
      size: 100*110,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  ProductModel(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 100*120,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "see strike printed satin scarf";
