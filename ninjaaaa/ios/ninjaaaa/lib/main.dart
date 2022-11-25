import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: testingapp(),
));

class testingapp extends StatelessWidget {
  const testingapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('Flowercart'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          children: [
            Text(
          'Name',
          style: TextStyle(
            color: Colors.black
          )
          ),
        ],
      ),
    ));
  }
}
