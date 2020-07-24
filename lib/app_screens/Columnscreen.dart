import 'package:flutter/material.dart';

//-------------------Column------------------------------
class Columnscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.red),
            child: Text("column 1"),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.green),
            child: Text('column 2'),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Text('column 3'),
          )
        ],
      ),
    );
  }
}
