import 'dart:convert';
import 'package:flowercart/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class SignupDesign extends StatelessWidget {
  final String? user;
  final String? email;
  final String? birthday;
  final String? pass;
 
  SignupDesign({super.key, this.user, this.email, this.birthday, this.pass});

late String u = user!;

late String e = email!;

late String b = birthday!;

late String p = pass!;



  Future<Album> createAlbum(String username, String email, String date, String password) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8081/api/users'), //need api
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, 
      body: jsonEncode(
        <String, String>{'username': username, 'email': email, 'birthday': date, 'password': password}
      ),
    );
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON

     var album = Album.fromJson(jsonDecode(response.body));
     print(album.title);
     return album;
    } else {
      //if the server diod not returnn a 20p1 CREATED response,
      //then throw an exception.
      throw Exception('Failed to create album');

    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _dateController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    _usernameController.text = user!;
    _emailController.text = email!;
    _dateController.text = birthday!;
    _passwordController.text = pass!;

    createAlbum(u, e, b, p);

    return HomeScreen(
    );
    
    
    
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text("SampleDesign"),
    //   ),
    //   body: Column(children: [
    //     TextField(
    //       controller: _usernameController,
    //     ),
    //     TextField(
    //       controller: _emailController,
    //     ),
    //     TextField(
    //       controller: _dateController,
    //     ),
    //     TextField(
    //       controller: _passwordController,
    //     ),
    //     TextButton(onPressed: () {
    //       createAlbum(_usernameController.text, _emailController.text, _dateController.text, _passwordController.text);
    //     }, child: const Text("Click Me"))
    //   ],)
    // );
  }
}

class Album {
  final int id;
  final String title;

  const Album({
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['username']
    );
  }
}