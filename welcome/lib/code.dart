import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class SampleDesign extends StatefulWidget {
  const SampleDesign({super.key});

  @override
  State<SampleDesign> createState() => _SampleDesignState();
}

class _SampleDesignState extends State<SampleDesign> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  

  Future<Album> createAlbum(String username, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.0.138.8000/docs'), //need api
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, 
      body: jsonEncode(
        <String, String>{'username': username, 'password': password}
      ),
    );
    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON
      return Album.fromJson(jsonDecode(response.body));
    } else {
      //if the server diod not returnn a 20p1 CREATED response,
      //then throw an exception.
      throw Exception('Failed to create album');

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SampleDesign"),
      ),
      body: Column(children: [
        TextField(
          controller: username,
        ),
        TextField(
          controller: password,
        ),
        TextButton(onPressed: () {
          createAlbum(username.text, password.text);
        }, child: const Text("Click Me"))
      ],)
    );
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title']
    );
  }
}