import 'package:flowercart/screens/home/home_screen.dart';
import 'package:flowercart/screens/user_profile/edit_profile.dart';
import 'package:flowercart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAccountPage extends StatelessWidget {
   MyAccountPage ({super.key});


  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController numberController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    
    return Scaffold(
       appBar: CustomAppBar(
        title: 'My Profile'),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Profile',
              style: Theme.of(context).textTheme.headline3,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("lib/assets/images/profile.jpg"),
                              ),
                              ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.black,
                          ),
                          child: GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                            },
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              _buildTextFormField(emailController, context, 'Email'),
              _buildTextFormField(nameController, context, 'Full Name'),
              _buildTextFormField(nameController, context, 'Number'),
              _buildTextFormField(addressController, context, 'Address'),
              SizedBox(
                height: 35,
              ),

            ],
          ),
        ),
      ),
    );
  }

   Padding _buildTextFormField(
    TextEditingController controller,
    BuildContext context,
    String labelText,
  )
  {
    return Padding(padding: const EdgeInsets.all(8.0),
    child: Row(children: [
      SizedBox(
        width: 75,
        child: Text(labelText, style: Theme.of(context).textTheme.headline5,),
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              isDense:  false,
              contentPadding: const EdgeInsets.only(left: 10),
              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                            ),
              ),
              ),
            ),
    ]
        ),
        );
  }

  void setState(Null Function() param0) {}
}