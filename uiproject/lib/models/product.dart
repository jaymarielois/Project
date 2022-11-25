import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  static var dummyText;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.size,
    required this.color,
    required this.price,
})
;

List<Product> products = [
  Product(
    id: 1,
    title: "Evergreen Flower",
    price: 500,
    size: 20,
    description: dummyText,
    image: "assets/images/Evergreen Flower Bouquet | Scentales Florist.jpg",
    color: Colors.black12),
  Product(
    id: 2,
    title: "Blush and Blue",
    price: 700,
    size: 20,
    description: dummyText,
    image: "assets/images/Blush and Blue Dried Flower Bouquet.jpg",
    color: Colors.black12),
  Product(
    id: 3,
    title: "Red Rose",
    price: 500,
    size: 20,
    description: dummyText,
    image: "assets/images/Red Rose Bouquet.jpg",
    color: Colors.black12),
  Product(
    id: 4,
    title: "Sunflower & Rose",
    price: 700,
    size: 20,
    description: dummyText,
    image: "assets/images/Sunflower & rose bouquet ❤️ | Boquette flowers….jpg",
    color: Colors.black12),
  Product(
    id: 5,
    title: "Pink",
    price: 800,
    size: 20,
    description: dummyText,
    image: "assets/images/tulip.jpg",
    color: Colors.black12),
  Product(
    id: 6,
    title: "Tulip",
    price: 1000,
    size: 20,
    description: dummyText,
    image: "assets/images/Unknown.jpg",
    color: Colors.black12),
];}