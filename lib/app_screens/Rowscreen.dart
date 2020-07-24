import 'package:flutter/material.dart';

//-------------------ROW ------------------------------
class Rowscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Row'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.red),
            child: Text("row 1"),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.green),
            child: Text('row 2'),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Text('row 3'),
          )
        ],
      ),
    );
  }
}
