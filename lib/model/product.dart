import 'package:flutter/material.dart';

class Product {
  String name;
  String image;
  double rating;
  String price;
  String brand;
  String description;
  String date;
  String fuel;
  String km;
  String engine;
  String gearbox;
  int totalReviews;
  List<String> sizes;
  List<ProductColor> colors;


  

  Product(
      {this.name,
      this.image,
      this.brand,
      this.price,
      this.rating,
      this.description,
      this.date,
      this.fuel,
      this.km,
      this.engine,
      this.gearbox,
      this.totalReviews,
      this.sizes,
      this.colors,
     });

  
}

class ProductColor {
  final String colorName;
  final MaterialColor color;

  ProductColor({this.colorName, this.color});
}
