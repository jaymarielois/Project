import 'dart:ui';

import 'package:flowercart/model/models.dart';
import 'package:flowercart/screens/cart/cart_screen.dart';
import 'package:flowercart/screens/catalog/catalog_screen.dart';
import 'package:flowercart/screens/checkout/checkout_screen.dart';
import 'package:flowercart/screens/home/home_screen.dart';
import 'package:flowercart/screens/home/inbox.dart';
import 'package:flowercart/screens/order_confirmation/order_confirmation.dart';
import 'package:flowercart/screens/product/product_screen.dart';
import 'package:flowercart/screens/profile.dart';
import 'package:flowercart/screens/splash/splash_screen.dart';
import 'package:flowercart/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProfileScreen.routeName:
        return ProfileScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case OrderConfirmation.routeName:
        return OrderConfirmation.route();
      case Inbox.routeName:
        return Inbox.route();
      
      
      


      default:
        return _errorRoute();
    }
  }
  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
          appBar: AppBar(title: Text('Error')),
        )
    );
  }
}
