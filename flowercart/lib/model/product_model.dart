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
        name: 'Hot Romance',
        category: 'Roses',
        imageUrl: 'https://i.pinimg.com/564x/d4/98/9b/d4989bf31d06a1296ec8f4c540162310.jpg',
        price: 25.59,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Sunflower',
        category: 'Sunflower',
        imageUrl: 'https://i.pinimg.com/564x/6a/23/5c/6a235ce3de57f8d52d113e9a26214990.jpg',
        price: 17.06,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Sunflower',
        category: 'Sunflower',
        imageUrl: 'https://i.pinimg.com/564x/15/40/33/1540330e167bdb9ce4a2b8528dbf86f4.jpg',
        price: 25.59,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Gerbera',
        category: 'Gerbera',
        imageUrl: 'https://i.pinimg.com/564x/a9/63/bc/a963bc3881583cb07759c0e4ed7e6a74.jpg',
        price: 11.94,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Tulip',
        category: 'Tulip',
        imageUrl: 'https://i.pinimg.com/564x/dd/94/71/dd947162d92ff15753789883236dad57.jpg',
        price: 29.00,
        isPopular: true,
        isRecommended: true),
  ];
}