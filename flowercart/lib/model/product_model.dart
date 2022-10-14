import 'package:equatable/equatable.dart';

class Product extends Equatable{
final String name;
final String category;
final String imageUrl;
final double price;
final bool isRecommended;
final bool isPopular;

const Product({
  required this.name,
  required this.category,
  required this.imageUrl,
  required this.price,
  required this.isPopular,
  required this.isRecommended,
});

  @override
  // TODO: implement props
  List<Object?> get props => [
      name,
      category,
      imageUrl,
      price,
      isPopular,
      isRecommended];

  static List<Product> products = [
    Product(
        name: 'Roses',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/d4/98/9b/d4989bf31d06a1296ec8f4c540162310.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Sunflower',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/6a/23/5c/6a235ce3de57f8d52d113e9a26214990.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Sunflower2',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/15/40/33/1540330e167bdb9ce4a2b8528dbf86f4.jpg',
        price: 00.00,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gerbera',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/a9/63/bc/a963bc3881583cb07759c0e4ed7e6a74.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Tulip',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/dd/94/71/dd947162d92ff15753789883236dad57.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'White',
        category: 'Box Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/a1/d4/7b/a1d47b2237c666ce4252e6779905cba5.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: false),
    Product(
        name: 'Balloon1',
        category: 'Balloon Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/9a/de/c6/9adec60270aa8880d2aaba6382463c4b.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Pink',
        category: 'Box Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/7d/61/5d/7d615d681a3bf8ea4b461a1043310163.jpg',
        price: 00.00,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gift1',
        category: 'Gifts',
        imageUrl: 'https://i.pinimg.com/564x/52/54/4c/52544c24db158f65d5b3fd47019285f7.jpg',
        price: 00.00,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gift2',
        category: 'Gifts',
        imageUrl: 'https://i.pinimg.com/736x/f1/d2/94/f1d294eeeeafe569e834e8eee2648f71.jpg',
        price: 00.00,
        isPopular: true,
        isRecommended: false),
    Product(
      name: 'Red', 
      category: 'Box Bouquet', 
      imageUrl: 'https://i.pinimg.com/564x/93/9c/21/939c218b34921f299f2421ce09b3ea3f.jpg', 
      price: 00.00, 
      isPopular: false, 
      isRecommended: false),
    Product(
      name: 'Blue', 
      category: 'Box Bouquet', 
      imageUrl: 'https://i.pinimg.com/564x/5b/06/61/5b0661a68e9f2559d03d07a9d0e24ad6.jpg', 
      price: 00.00, 
      isPopular: false, 
      isRecommended: false),
    Product(
      name: 'Balloon2', 
      category: 'Balloon Bouquet', 
      imageUrl: 'https://i.pinimg.com/564x/e7/ac/bd/e7acbd52a21f05953998cfde5acfbc29.jpg', 
      price: 00.00, 
      isPopular: false, 
      isRecommended: false), 
     Product(
      name: 'Balloon3', 
      category: 'Balloon Bouquet', 
      imageUrl: 'https://i.pinimg.com/736x/23/8f/9e/238f9e8dfe920a6e0da899a8b2cd824b.jpg', 
      price: 00.00, 
      isPopular: false, 
      isRecommended: false), 
    Product(
      name: 'Ballon4', 
      category: 'Balloon Bouquets', 
      imageUrl:'https://i.pinimg.com/564x/ad/b7/e8/adb7e85eba56eb26110fdb1ef931bea9.jpg', 
      price: 00.00, 
      isPopular: false, 
      isRecommended: false),   
  ];
}