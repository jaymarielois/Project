import 'package:flutter/material.dart';
import 'package:trial/constants.dart';
import 'package:trial/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.amberAccent,
      elevation: 0.0,
      leading:
      IconButton(
          onPressed: () {Navigator.pop;},
          icon: Icon(Icons.arrow_back_ios)
      ),
      actions: [
        IconButton(
          onPressed: () {Navigator.pop;},
          icon: Icon(Icons.search_rounded)
      ),
        IconButton(
            onPressed: () {Navigator.pop;},
            icon: Icon(Icons.shopping_cart_outlined)
        )],
    );
  }
}
