import 'package:flutter/material.dart';
import 'package:ui_dart/app_screens/Firstscreen.dart';
import 'package:ui_dart/app_screens/Rowscreen.dart';
import 'package:ui_dart/app_screens/Columnscreen.dart';
import 'package:ui_dart/app_screens/Combinerowcol.dart';
import 'package:ui_dart/app_screens/Listview.dart';

void main() {
  runApp(MyFlutterApp());
}

/* -------------------- Firstscreen.dart -----------------------
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
-----------End of Firstscreen.dart --------------*/

/*------------------ Row / Column ----------------------
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan banner debug
      title: 'My Flutter App',
      home: Scaffold(
        body: Columnscreen(), //isi,
      ),
    );
  }
}
------------ End of Row / Column ---------------*/

/*------------------Combine Row and Column ----------------------*/
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan banner debug
      title: 'My Flutter App',
      home: Scaffold(
        body: Combinerowcol(), //isi,
      ),
    );
  }
}
