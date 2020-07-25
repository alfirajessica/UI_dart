import 'package:flutter/material.dart';
import 'package:ui_dart/app_screens/Listview.dart';

//------------------------ long list ------------------------------
class Longlist extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Longlist'),
        ),
        body: GetLonglist());
  }

  List<String> getlistnum() {
    var items = List<String>.generate(100, (counter) => "Items $counter");
    return items;
  }

  Widget GetLonglist() {
    var listnums = getlistnum();
    var listview = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.album),
          title: Text(listnums[index]),
          onTap: () {
            var alertDialog = AlertDialog(
              title: Text("Tap item - " + listnums[index]),
              content: Text("Have pleasent flight"),
            );
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alertDialog;
                });
          },
        );
      },
    );
    return listview;
  }
}

//-------------------END OF long list ------------------------------
