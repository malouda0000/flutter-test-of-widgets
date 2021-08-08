
import 'dart:ui';

import 'package:flutter/material.dart';

class DeatilsListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i <= 100; i++) DeatialsList(),
        ],
      ),
    );
  }
}

var theHeader = "test the header";
var discreptionOfTheHeader = "test the discription of the header";

class DeatialsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(
              // left: 15,
              // right: 15,
              ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      theHeader.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      discreptionOfTheHeader.toString(),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text("23"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
