import 'dart:math';

import 'package:flutter/material.dart';

//------------------------UI DART ------------------------------
/*class Firstscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            'hello',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
            ),
          ),
        ));
  }
}*/
//-------------------END OF UI DART ------------------------------

class Firstscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            'Your lucky number is = ${generatenumberlucky()}',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ));
  }
}

int generatenumberlucky() {
  var rand = Random();
  int luckynum = rand.nextInt(10);
  return luckynum;
}
