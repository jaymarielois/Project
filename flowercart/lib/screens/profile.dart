import 'package:flowercart/screens/screens.dart';
import 'package:flowercart/screens/user_profile/body.dart';
import 'package:flowercart/screens/user_profile/logout.dart';
import 'package:flowercart/screens/user_profile/my_account.dart';
import 'package:flowercart/screens/user_profile/profilewidget.dart';
import 'package:flowercart/screens/user_profile/settings.dart';
import 'package:flowercart/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';


  class ProfileScreen extends StatelessWidget {
  static const String routeName = '/user';
  const ProfileScreen({Key? key}) : super(key: key);


  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProfileScreen()
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      bottomNavigationBar: CustomNavBar(screen: routeName),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("lib/assets/images/profile.jpg"),
            ),
            SizedBox(height: 10,),
             Container(
                        child:GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAccountPage()));
                        },
                        child: ProfileWidget(
                          icon: Icons.person,
                          title: 'Account',
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
                        ),
                      ),
          ],
      ),
      )
  );
  }
  }