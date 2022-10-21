import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowercart/blocs/cart/cart_bloc.dart';
import 'package:flowercart/blocs/wishlist/wishlist_bloc.dart';
import 'package:flowercart/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flowercart/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffEDDBC0),
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share, color: Colors.black)),
                BlocBuilder<WishlistBloc, WishlistState>(
                  builder: (context, state) {
                    return IconButton(
                      icon:
                            Icon(Icons.favorite_outline, color: Colors.black),
                      onPressed: () {
                          context
                          .read<WishlistBloc>()
                          .add(AddWishlistProduct(product));

                          final snackBar = SnackBar(content: Text('Added to your Wishlist!'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                  },
                ), 
                
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return ElevatedButton(
                                  style:
                                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                  onPressed: () {
                                    context
                                         .read<CartBloc>()
                                         .add(CartProductAdded(product));
                                         Navigator.pushNamed(context, '/cart');
                                         },
                                  child: Text('ADD TO CART',
                                      style: Theme.of(context).textTheme.headline3!),
                                );
                  },
                )
              ],
            ),
          ),
          ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [
              HeroCarouselCard(
                product: product,
                category: null,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    alignment: Alignment.bottomCenter,
                    color: Colors.transparent),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 30,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black),
                        ),
                        Text(
                          '${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text('Product Information'),
              children: [
                ListTile(
                  title: Text(
                      'The red rose symbolizes romance, love, beauty, and courage. A perfect dozen shouts "Be mine!"',
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              title: Text('Delivery Information'),
              children: [
                ListTile(
                  title: Text(
                      'The red rose symbolizes romance, love, beauty, and courage.',
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ),
          )
        ],
      ),
      //HeroCarouselCard(product: product, category: null,),
    );
  }
}
