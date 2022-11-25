import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowercart/model/category_model.dart';
import 'package:flowercart/model/product_model.dart';
import 'package:flowercart/screens/home/drawerHeader.dart';
import 'package:flutter/material.dart';
import 'package:flowercart/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  HomeScreen({super.key, this.user, this.email, this.birthday, this.pass});
  String? user;
  String? email;
  String? birthday;
  String? pass;
  
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => HomeScreen()
    );
  }

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: CustomAppBar(title: 'Reines Fleuries'),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerHeader(),
              ]),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(screen: routeName),
      body: Column(
        children: [
          CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: .9 ,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories.map((category) => HeroCarouselCard(category: category, product: null,))
                    .toList()
              ),
          SectionTitle(title: 'RECOMMENDED'),
          ProductCarousel(products: Product.products
              .where((product) => product.isRecommended)
              .toList()
          ),
          SectionTitle(title: 'MOST POPULAR'),
           ProductCarousel(products: Product.products
              .where((product) => product.isPopular)
              .toList()
           )],
      ),
    );
  }
}
