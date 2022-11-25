import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xffEDDBC0),
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle ,
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/profile.jpg"),
                    ),
                    ),
              ),
              Text("Jaymarie Recare",
              style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text("absidi695@gmail.com",
              style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
            ),
        ),
        ListTile(
          leading: Icon(Icons.cake,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Birthday",
            style: TextStyle(fontSize: 20),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.church,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Wedding",
            style: TextStyle(fontSize: 20),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.wc,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Proposals",
            style: TextStyle(fontSize: 20),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.cases_outlined,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Business Openings",
            style: TextStyle(fontSize: 20),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.school_outlined,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Graduations",
            style: TextStyle(fontSize: 20),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.volunteer_activism,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Funerals",
            style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Divider(
          color: Color.fromARGB(255, 142, 138, 138),
          height: 5.0,
          thickness: 1.0,
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Privacy Security",
            style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.feedback,
          color: Colors.black),
          title: GestureDetector(
            onTap: () {},
            child: Text("Feedback",
            style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
}
}