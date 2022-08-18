import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'product_model.g.dart';

@HiveType(typeId: 0)
class Product {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final double? rate;
  @HiveField(4)
  final double? price;
  @HiveField(5)
  final Color? color;
  @HiveField(6)
  final String? category;

  Product({
    this.category,
    this.image,
    this.description,
    this.name,
    this.rate,
    this.color,
    this.price,
  });
}
