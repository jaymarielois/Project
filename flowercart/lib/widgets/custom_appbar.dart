import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffEDDBC0),
      elevation: 0,
      title: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Text(
          title, 
        style: Theme.of(context).textTheme.headline2!.copyWith(
          color: Colors.black,
        ),
    )
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [IconButton(onPressed: () {
        Navigator.pushNamed(context, '/wishlist');
      }, icon: Icon(Icons.favorite))],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
