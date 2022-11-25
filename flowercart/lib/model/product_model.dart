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
        price: 1700.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Sunflower',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/6a/23/5c/6a235ce3de57f8d52d113e9a26214990.jpg',
        price: 1500.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Sunflower2',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/15/40/33/1540330e167bdb9ce4a2b8528dbf86f4.jpg',
        price: 1800.00,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gerbera',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/a9/63/bc/a963bc3881583cb07759c0e4ed7e6a74.jpg',
        price: 2500.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Tulip',
        category: 'Flower Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/dd/94/71/dd947162d92ff15753789883236dad57.jpg',
        price: 3000.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'White',
        category: 'Box Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/a1/d4/7b/a1d47b2237c666ce4252e6779905cba5.jpg',
        price: 2500.00,
        isPopular: true,
        isRecommended: false),
    Product(
        name: 'Balloon1',
        category: 'Balloon Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/9a/de/c6/9adec60270aa8880d2aaba6382463c4b.jpg',
        price: 1500.00,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Pink',
        category: 'Box Bouquet',
        imageUrl: 'https://i.pinimg.com/564x/7d/61/5d/7d615d681a3bf8ea4b461a1043310163.jpg',
        price: 1500.00,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gift1',
        category: 'Gifts',
        imageUrl: 'https://i.pinimg.com/564x/52/54/4c/52544c24db158f65d5b3fd47019285f7.jpg',
        price: 2000.00,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gift2',
        category: 'Gifts',
        imageUrl: 'https://i.pinimg.com/736x/f1/d2/94/f1d294eeeeafe569e834e8eee2648f71.jpg',
        price: 2500.00,
        isPopular: true,
        isRecommended: false),
    Product(
      name: 'Red', 
      category: 'Box Bouquet', 
      imageUrl: 'https://i.pinimg.com/564x/93/9c/21/939c218b34921f299f2421ce09b3ea3f.jpg', 
      price: 2500.00, 
      isPopular: false, 
      isRecommended: false),
    Product(
      name: 'Blue', 
      category: 'Box Bouquet', 
      imageUrl: 'https://i.pinimg.com/564x/5b/06/61/5b0661a68e9f2559d03d07a9d0e24ad6.jpg', 
      price: 2800.00, 
      isPopular: false, 
      isRecommended: false),
    Product(
      name: 'Balloon2', 
      category: 'Balloon Bouquet', 
      imageUrl: 'https://i.pinimg.com/564x/e7/ac/bd/e7acbd52a21f05953998cfde5acfbc29.jpg', 
      price: 2000.00, 
      isPopular: false, 
      isRecommended: false), 
     Product(
      name: 'Balloon3', 
      category: 'Balloon Bouquet', 
      imageUrl: 'https://i.pinimg.com/736x/23/8f/9e/238f9e8dfe920a6e0da899a8b2cd824b.jpg', 
      price: 2300.00, 
      isPopular: false, 
      isRecommended: false), 
    Product(
      name: 'Ballon4', 
      category: 'Balloon Bouquets', 
      imageUrl:'https://i.pinimg.com/564x/ad/b7/e8/adb7e85eba56eb26110fdb1ef931bea9.jpg', 
      price: 2000.00, 
      isPopular: false, 
      isRecommended: false),
    Product(
      name: 'Roses2', 
      category: 'Flower Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/21/46/2c/21462c4484e91332d88d6d9ad4f8c1b8.jpg',
      price: 2500.00, 
      isPopular: true,
      isRecommended: false),
    Product(
      name: 'Roses3', 
      category: 'Flower Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/5b/94/17/5b9417c7a3c0f0fba9574a565abd20a8.jpg',
      price: 2000.00, 
      isPopular: false,
      isRecommended: true),
    Product(
      name: 'Sunflower3', 
      category: 'Flower Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/49/0d/8c/490d8ca1270b1c58e3758c27999f4656.jpg',
      price: 500, 
      isPopular: false,
      isRecommended: false),
    Product(
      name: 'Tulip2', 
      category: 'Flower Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/7d/81/a5/7d81a54b17b45e85b45ccf76a8032880.jpg',
      price: 3000.00, 
      isPopular: false,
      isRecommended: true),
    Product(
      name: 'Tulip3', 
      category: 'Flower Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/fc/35/cb/fc35cb9d36c07b1509348c5106cd9e86.jpg',
      price: 700, 
      isPopular: false,
      isRecommended: false),
    Product(
      name: 'Gerbera2', 
      category: 'Flower Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/5b/06/f0/5b06f05e3c5d713067cc1d46797232ed.jpg',
      price: 500, 
      isPopular:false,
      isRecommended: false),
    Product(
      name: 'Rose Gold', 
      category: 'Box Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/3e/d8/52/3ed85249a72d633a2b85011d9955ed2a.jpg',
      price: 4000.00, 
      isPopular: true,
      isRecommended: false),
    Product(
      name: 'Gray', 
      category: 'Box Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/30/08/e5/3008e5ea1713d3122ede41ddb3976182.jpg',
      price: 3000.00, 
      isPopular: false,
      isRecommended: true),
    Product(
      name: 'Y&B', 
      category: 'Box Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/52/b5/3a/52b53a996b269d45863b92c621b4be10.jpg',
      price: 3500.00, 
      isPopular: false,
      isRecommended: false),
    Product(
      name: 'Purple', 
      category: 'Box Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/33/70/29/337029dbbcffa36b6b317e724de34d08.jpg',
      price: 3000, 
      isPopular: true,
      isRecommended: false),
    Product(
      name: 'Balloon4', 
      category: 'Balloon Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/82/41/04/8241044e81af6ae9ac81df2d529b21f2.jpg',
      price: 10000.00, 
      isPopular: true,
      isRecommended: true),
    Product(
      name: 'Balloon5', 
      category: 'Balloon Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/67/10/91/67109192397ac2c06d6ceae9f125b27f.jpg',
      price: 3500.00, 
      isPopular: false,
      isRecommended: false),
    Product(
      name: 'Balloon6', 
      category: 'Balloon Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/3e/f4/84/3ef4844228c4b2c7491c23150ace27e9.jpg',
      price: 7000.00, 
      isPopular: false,
      isRecommended: true),
    Product(
      name: 'Balloon7', 
      category: 'Balloon Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/46/ad/ec/46adec9dec17bf93c58f584e474e0ce6.jpg',
      price: 5000.00, 
      isPopular: true,
      isRecommended: false),
    Product(
      name: 'Balloon8', 
      category: 'Balloon Bouquet',
      imageUrl: 'https://i.pinimg.com/564x/8d/b7/e0/8db7e0567bfc40df992e802b824a6fb8.jpg',
      price: 5000, 
      isPopular: false,
      isRecommended: true),
  ];
}