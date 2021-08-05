import 'package:flutter/material.dart';

class BulidingSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      // width: 150,
      color: Colors.green,
      child: Center(child: BuildPost()),
    );
  }
}

class BuildPost extends StatelessWidget {
//im trying to call this widget
//from another place
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Image(
          image: AssetImage('assets/images/image2.png'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
            IconButton(
              icon: Icon(Icons.comment_bank_outlined),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.share_outlined), onPressed: () {}),
          ],
        )
      ]),
    );
  }
}
