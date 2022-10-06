import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowercart/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flowercart/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product)
    );
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: CustomNavBar(),
      body: ListView(
        children: [CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [
              HeroCarouselCard(product: product, category: null,
              )
            ],
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.bottomCenter,
                color: Colors.black.withAlpha(50),
                ),
              Container(
                margin: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width - 10,
                height: 50,
                alignment: Alignment.bottomCenter,
                color: Colors.black,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(product.name, style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
                  Text('${product.price}', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
                ],),
              ),
              ],
            ),
          )
    ],
      ),
      //HeroCarouselCard(product: product, category: null,),
    );
  }
}