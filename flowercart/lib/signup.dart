import 'package:flowercart/login.dart';
import 'package:flowercart/screens/screens.dart';
import 'package:flowercart/signupp.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}
  class _SignupPageState extends State<SignupPage>{
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordNumber = false;
  DateTime selectedDate = DateTime.now();

  TextEditingController _dateController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  onPasswordChanged(String password) {
  final numericRegex = RegExp(r'[0-9]');
  setState(() {
  _isPasswordEightCharacters = false;
  if(password.length >=8)
  _isPasswordEightCharacters = true;

  _hasPasswordNumber = false;
  if(numericRegex.hasMatch(password))
  _hasPasswordNumber = true;

  });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEDDBC0),
        leading: IconButton(onPressed: () {Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),

        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              Column(
                children:<Widget>[
                  Text("Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                  Text("Create an account, It's free",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),)
                ],
              ),
               Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column( children:<Widget> [
                   TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Username",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
              ),
            ),
                    SizedBox( height: 10,),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: "Email",
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                      ),
                    ),
                      SizedBox( height: 10,),

        TextFormField(
  readOnly: true,
  controller: _dateController,
  decoration: InputDecoration(
    border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
    hintText: 'Birthday',
  ),
  onTap: () async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    // ).then((selectedDate) {
    //   if (selectedDate != null) {
    //     _dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate).toString();
    //     print(selectedDate);
    //   }
    // }
    );
    if (picked != null && picked != DateTime.now()){
        setState(() {
          selectedDate = picked;
          _dateController.text = selectedDate.toString().substring(0,10);
        });
    }
  },
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter date.';
    }
    return null;
  },
),
SizedBox( height: 10,),

  TextField(
    controller: _passwordController,
  onChanged: (password) => onPasswordChanged(password),
  obscureText: !_isVisible,
  decoration: InputDecoration(
  suffixIcon: IconButton(
  onPressed: () {
  setState(() {
  _isVisible = !_isVisible;
  });
  },
  icon: _isVisible ? Icon(Icons.visibility, color: Colors.black,) :
  Icon(Icons.visibility_off, color: Colors.grey,),
  ),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(color: Colors.black)
  ),
  focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(color: Colors.black),
  ),
  hintText: "Password",
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
  ),
  ),
  SizedBox(height: 5,),
  Row(
  children: [
  AnimatedContainer(
  duration: Duration(milliseconds: 500),
  width: 20,
  height: 20,
  decoration: BoxDecoration(
  color: _isPasswordEightCharacters ? Colors.green : Colors.transparent,
  border: _isPasswordEightCharacters ? Border.all(color: Colors.transparent) : Border.all(color: Colors.grey.shade400),
  borderRadius: BorderRadius.circular(50)
  ),
  child: Center(child: Icon(Icons.check, color: Colors.white, size:15,),),
  ),
  SizedBox(width: 10,),
  Text("Contains at least 8 characters")
  ],
  ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: _hasPasswordNumber ? Colors.green : Colors.transparent,
                              border: _hasPasswordNumber ? Border.all(color: Colors.transparent) : Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Icon(Icons.check, color: Colors.white, size:15,),),
                        ),
                        SizedBox(width: 10,),
                        Text("Contains number")
                      ],
                    ),


            SizedBox( height: 100,),
              Container(
                padding: EdgeInsets.only(top: 0,left: 0),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                      top: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                     Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => SignupDesign(user: _usernameController.text, email: _emailController.text, birthday: _dateController.text,  pass: _passwordController.text,)));
                  },
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  ),
              )
              ),
                    SizedBox(height: 10,),
                    Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                  child: Text("Login", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                  ),)
                  )],
              ),
            ],

          ),
        ),
      ]),
    ),
    );
  }
}

useTextEditingController() {
}

class DateFormat {
  DateFormat();
  
  format(DateTime selectedDate) {}
}