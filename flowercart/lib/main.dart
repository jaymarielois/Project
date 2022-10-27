import 'package:flowercart/blocs/cart/cart_bloc.dart';
import 'package:flowercart/blocs/wishlist/wishlist_bloc.dart';
import 'package:flowercart/config/app_router.dart';
import 'package:flowercart/config/theme.dart';
import 'package:flowercart/login.dart';
import 'package:flowercart/screens/profile.dart';
import 'package:flowercart/screens/screens.dart';
import 'package:flowercart/signup.dart';
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
          initialRoute: ProfileScreen.routeName,
        ),
      );
    });
  }
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              // Column(
              //   children: <Widget>[
              //     Text(
              //       "WELCOME",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 50,
              //       ),
              //     ),
              //     SizedBox(
              //       height: .000001,
              //     ),
              //     Text("Happiness blooms from within",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.black38,
              //       fontSize: 15
              //     ),)
              //   ],
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 3,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage("assets/image/myproject.png")
              //     )
              //   ),
              // ),
              Column(
                children:<Widget>[
                  //log in button
                  MaterialButton(minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                    child: Text("Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ))
                  ),
                  //sign up button
                  SizedBox(height: 20),
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                      },
                    color: Color(0xffEDDBC0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

