import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
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
}
