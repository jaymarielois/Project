import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), onPressed: () { },
        )
      ),
    );
  }
}
