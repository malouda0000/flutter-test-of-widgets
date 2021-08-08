import 'package:flutter/material.dart';

var randomeImages = [
  AssetImage('assets/images/image1.png'),
  AssetImage('assets/images/image2.png'),
  AssetImage('assets/images/image3.png'),
  AssetImage('assets/images/image4.png'),
];

imageActions() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: Icon(Icons.favorite_outline_rounded),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.save_outlined),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.share_outlined),
        onPressed: () {},
      ),
    ],
  );
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagePade(),
        ImagePade(),
        ImagePade(),
        ImagePade(),
      ],
    );
  }
}

class ImagePade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Image(
            image: randomeImages[3],
          ),
          imageActions(),
        ],
      ),
    );
  }
}
