import 'package:flutter/material.dart';

class TestOfPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 40,
        top: 20,
      ),
      height: 750,
      width: 400,
      color: Colors.red,
      child: Container(
        padding: EdgeInsets.only(
          top: 270,
          bottom: 270,
        ),
        color: Colors.blue,
        child: Container(
          padding: EdgeInsets.only(top: 20,bottom: 20, right: 200,),
          color: Colors.green,
          child: Container(
            color: Colors.yellow,
            child: Text('whats up bro'),
          ),
        ),
      ),
    );
  }
}
