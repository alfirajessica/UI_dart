import 'package:flutter/material.dart';
import 'package:ui_dart/app_screens/Firstscreen.dart';

void main() {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan banner debug
      title: 'My Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first flutter app screen'), //title pada appbar
        ),
        body: Firstscreen(), //isi
      ),
    );
  }
}
