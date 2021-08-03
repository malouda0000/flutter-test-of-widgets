import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  var _userName = "hummam";
  var _userEmail = "hamam.hamza85@gmail.com";
  @override
  Widget build(BuildContext context) {
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
                otherAccountsPictures: [],
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
          ],
        ),
      ),
    );
  }
}
