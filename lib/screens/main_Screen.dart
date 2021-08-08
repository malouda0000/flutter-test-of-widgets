import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagePade(),
        Padding(padding: EdgeInsets.all(15)),
        Icon(Icons.favorite),
        Padding(padding: EdgeInsets.all(15)),
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("don't fucking kid me"),
        ),
        // ElevatedButton.icon(
        //   onpressed: (){},
        //   child: Text('this is elevated button'),
        // )
      ],
    );
  }
}

class ImagePade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/image1.png'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.favorite_outline_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
