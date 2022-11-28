import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:welcome/homepage.dart';
class LoginDesign extends StatelessWidget {
  final String? user;
  final String? pass;
  
   LoginDesign({super.key, this.user, this.pass});
 

late String p = user!;

late String u = pass!;

  Future<Album> createAlbum(String username, String password) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8081/api/users'), //need api
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, 
      body: jsonEncode(
        <String, String>{'username': username, 'password': password}
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
    TextEditingController _passwordController = TextEditingController();
    _usernameController.text = user!;
    _passwordController.text = pass!;

    createAlbum(u, p);

    return HomeScreen(
      );
      
    
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text("SampleDesign"),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Column(children: [
    //       TextField(
    //         controller: _usernameController,
    //       ),
    //       TextField(
    //         controller: _passwordController,
    //       ),
    //       TextButton(onPressed: () {
    //         createAlbum(_usernameController.text, _passwordController.text);
    //         Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
    //       }, child: const Text("Click Me"))
    //     ],),
    //   )
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