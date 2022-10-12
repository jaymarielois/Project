import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xffEDDBC0),
      child: Container(
          height: 70,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {Navigator.pushNamed(context, '/');},
                icon: Icon(Icons.home_filled, color: Colors.black),
              ),
              IconButton(
                onPressed: () {Navigator.pushNamed(context, '/cart');},
                icon: Icon(Icons.shopping_cart, color: Colors.black),
              ),
              IconButton(
                onPressed: () {Navigator.pushNamed(context, '/user');},
                icon: Icon(Icons.person, color: Colors.black),
              )
            ],)
      ),
    );
  }
}