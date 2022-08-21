import 'package:flutter/material.dart';

class Product {
  final String? name;
  final String? image;
  final String? description;
  final double? price;
  final double? rate;
  final Color? color;
  final String? category;

  Product(
      {this.name,
      this.image,
      this.description,
      this.price,
      this.rate,
      this.color,
      this.category});
}
