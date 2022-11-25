import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Flutter Login UI',
       debugShowCheckedModeBanner: false,
       home: LoginScreen()
     );
   }
 }
