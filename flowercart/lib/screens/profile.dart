import 'package:flowercart/screens/user_profile/body.dart';
import 'package:flowercart/screens/user_profile/logout.dart';
import 'package:flowercart/screens/user_profile/my_account.dart';
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
      body: Body(),

  );
  }
  }