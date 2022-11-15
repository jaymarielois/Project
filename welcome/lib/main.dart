import 'package:flutter/material.dart';
import 'package:welcome/login.dart';
import 'package:welcome/signup.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(
                    height: .000001,
                  ),
                  Text("Happiness blooms from within",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15
                  ),)
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/myproject.png")
                  )
                ),
              ),
              Column(
                children:<Widget>[
                  //log in button
                  MaterialButton(minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                    child: Text("Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ))
                  ),
                  //sign up button
                  SizedBox(height: 20),
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                      },
                    color: Color(0xffEDDBC0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
