import 'package:flutter/material.dart';

void main() =>
  runApp(const MaterialApp(
    home: trial()
  ));

class trial extends StatefulWidget {
  const trial({Key? key}) : super(key: key);

  @override
  State<trial> createState() => _trialState();
}

class _trialState extends State<trial> {

  int triallevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('woii'),
        backgroundColor: Colors.amberAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black12,
        elevation: 0.0,
      ),
      body: Padding(
    padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
    child: CircleAvatar(
      backgroundImage: NetworkImage('https://scontent.fmnl3-2.fna.fbcdn.net/v/t1.15752-9/299291068_754058672472621_5035164399060114688_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=ae9488&_nc_ohc=l1BTZo48JyoAX9us8NH&_nc_ht=scontent.fmnl3-2.fna&oh=03_AVIMORLb-JrBckrtZ0ePgVPBu8h6PToShmiFD9jsH5y2cw&oe=6352935A'),
      radius: 50,
      ),
    ),
      Divider(
        height: 20,
        color: Colors.black,
      ),
      Text(
        'username:',
        style:TextStyle(
          color: Colors.black,
          letterSpacing: 5,
        ),
      ),
          Divider(
          height: 20,
    color: Colors.black,
    ),
    Text(
    'password:',
    style:TextStyle(
    color: Colors.black,
    letterSpacing: 5,
    ),
    ),
      Row(
        children: [
          Icon(Icons.mail_outline_rounded,),
          Text('ekswaysii@email.com',
          style:TextStyle(color: Colors.black, fontSize: 15

          )
        ),
      ])

    ])));
  }
}


