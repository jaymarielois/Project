import 'package:flowercart/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flowercart/widgets/widgets.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';
  const WishlistScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishlistScreen()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.20),
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(child: ProductCard(
              product: Product.products[index],
              withFactor: 2.2,
              leftPosition: 0,
              isWishlist: true,
            ));
          }
      ),
    );
  }
}