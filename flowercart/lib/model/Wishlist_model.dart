import 'package:equatable/equatable.dart';
import 'package:flowercart/model/models.dart';

class Wishlist extends Equatable {
  final List<Product> products;

  const Wishlist({this.products = const <Product>[]});

  @override
  List<Object?> get props => [products];
}
