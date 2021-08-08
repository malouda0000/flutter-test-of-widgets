import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final _userName = "hummam";
  final _userEmail = "hamam.hamza85@gmail.com";

  @override
  Widget build(BuildContext context) {
    drawerActions(IconData ico, String text) {
      return GestureDetector(
        child: Column(children: [
          Icon(
            ico,
            size: 30,
          ),
          Text(text),
        ]),
      );
    }

    // Widget footerActions = Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   crossAxisAlignment: CrossAxisAlignment.end,
    //   children: [
    //     Container(
    //       // color: Colors.red,
    //       child: IconButton(
    //         icon: Icon(
    //           Icons.ac_unit_outlined,
    //         ),
    //         onPressed: () => {},
    //       ),
    //     ),
    //     IconButton(
    //       icon: Icon(Icons.insert_comment_outlined),
    //       onPressed: () => {},
    //     ),
    //     IconButton(icon: Icon(Icons.description_outlined), onPressed: () => {}),
    //     // DrawerActions(Icons.image, "thanks",),
    //   ],
    // );

    return Drawer(
      child: Container(
        child: ListView(
          children: [
            Container(
              child: UserAccountsDrawerHeader(
                accountName: Text(_userName.toString().toUpperCase()),
                accountEmail: Text(_userEmail.toUpperCase().toString()),
                currentAccountPicture: CircleAvatar(
                  child: Image(
                    image: AssetImage("assets/images/userAccounImage.jpg"),
                  ),
                ),
                otherAccountsPictures: [
                  Image(
                    image: AssetImage("assets/images/userAccounImage.jpg"),
                  ),
                  CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/images/userAccounImage.jpg"),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('home'),
            ),
            ListTile(
              title: Text('setting'),
            ),
            ListTile(
              title: Text('about us'),
            ),
            ListTile(
              title: Text('sochial '),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              drawerActions(
                Icons.share_outlined,
                "share",
              ),
              drawerActions(
                Icons.message_outlined,
                "feedback",
              ),
              drawerActions(
                Icons.settings_phone_outlined,
                "settings ",
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
