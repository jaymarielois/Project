import 'package:flowercart/blocs/cart/cart_bloc.dart';
import 'package:flowercart/blocs/wishlist/wishlist_bloc.dart';
import 'package:flowercart/config/app_router.dart';
import 'package:flowercart/config/theme.dart';
import 'package:flowercart/screens/home/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
          BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Reines Fleuries',
          theme: theme(),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomeScreen.routeName,
        ),
      );
    });
  }
}
