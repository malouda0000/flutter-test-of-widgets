import 'package:flutter/material.dart';

import 'deatils_tab.dart';
import 'main_Screen.dart';

maneyText() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("skdhlfkdlfjdfkljad ] ;asdkjfsdk;asdjfas;difjoa"
        "skdhlfkdlfjdfkljad ]kjfsdk;asdjfas;difjoa"
        "skdhlfkdlfjdfkljad ];asdkjfsdk;asdjfas;difjoa"
        "skdhlfkdlfjdfkljad ]fdgskjggfksjdfljg;ldkfgjsdshgjasdkjfsdk;asdjfas;difjoa"
        "skdhlfkdlfjdfkljad ];asdkjfsdk;asdjfas;difjoa"
        ";ljfoiewfoeijf\na; dsfsa;jfajffoiewjf "),
  );
}

class PlaceDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
            image: randomeImages[1],
          ),
          DeatialsList(),
          imageActions(),
          Container(
            color: Colors.grey,
            alignment: Alignment.centerLeft,
            child: maneyText(),
          ),
        ],
      ),
    );
  }
}
