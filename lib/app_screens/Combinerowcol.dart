import 'package:flutter/material.dart';

//-------------------Column------------------------------
class Combinerowcol extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Combine Row and Column'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text("Batik Air"),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('column 2'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text("Garuda Air"),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('column 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
