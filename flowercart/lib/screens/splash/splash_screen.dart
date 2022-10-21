import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/'));
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('lib/assets/images/logoo.png'), 
          width: 200, 
          height: 200,
          ),
          ),
          Container(
            child: Text('Reines Fleuries', 
            style: Theme.of(context).textTheme.headline2!.copyWith(color: Color.fromARGB(255, 130, 89, 75),
          ),
          ),
          ),
        ],
        )


    );
  }
}