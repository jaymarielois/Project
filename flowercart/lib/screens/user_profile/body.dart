import 'package:flowercart/screens/screens.dart';
import 'package:flowercart/screens/user_profile/logout.dart';
import 'package:flowercart/screens/user_profile/my_account.dart';
import 'package:flowercart/screens/user_profile/profilewidget.dart';
import 'package:flowercart/screens/user_profile/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class  Body  extends StatelessWidget {
const Body ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/profile.jpg")
                ),
              ),
            ),
            Text("Jaymarie Recare",
          style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text("absidi695@gmail.com",
          style: TextStyle(color: Colors.black, fontSize: 15),
          ),
            SizedBox(height: 50,),
             Container(
                        child:GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAccountPage()));
                        },
                        child: ProfileWidget(
                          icon: Icons.person,
                          title: 'My Profile',
                        ),
                      ),
             ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
                        },
                        child: ProfileWidget(
                          icon: Icons.settings,
                          title: 'Settings',
                        ),
                      ),
        
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                        child: ProfileWidget(
                          icon: Icons.logout,
                          title: 'Log Out',
            )
            ),
      ],
      );
  }
}