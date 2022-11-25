import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  // const settings({Key? key}) : super(key: key);
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
          title: Text(
            'Settings',
            style: Theme.of(context).textTheme.headline3,
          ),
          backgroundColor: Color(0xffEDDBC0),
          leading: IconButton(onPressed: () {Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),

        ),

        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Icon(Icons.person_outlined,
                      color: Colors.black),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                  child: Text(
                    'Account',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Change Password',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Content Settings',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Languange',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 243),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Privacy and security',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 165),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Change Password',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Icon(Icons.notifications,
                      color: Colors.black),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                  child: Text(
                    'Notification',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text(
                  'Turn on Notification',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 120,
              ),
              CupertinoSwitch(
                  activeColor: Colors.black,
                  trackColor: Colors.black,
                  value: switchState,
                  onChanged: (bool value) {
                    print(value);
                  }),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text(
                  'Active Status',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 183,
              ),
              CupertinoSwitch(
                  activeColor: Colors.black,
                  trackColor: Colors.black,
                  value: switchState,
                  onChanged: (bool value) {
                    print(value);
                  }),
            ]),
          ],
        ));
  }
}