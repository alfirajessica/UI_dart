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
        body: GetLonglist(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          tooltip: "Add one more",
        ));
  }

  List<String> getlistnum() {
    var items = List<String>.generate(100, (counter) => "Items $counter");
    return items;
  }

  //------------- long list with alert dialog ----------------
  /*Widget GetLonglist() {
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
}*/
//-------------------END OF long list with alert dialog------------------------------

//------------- long list without alert dialog ----------------
  Widget GetLonglist() {
    var listnums = getlistnum();
    var listview = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.album),
          title: Text(listnums[index]),
          onTap: () {
            showSnackBar(context, listnums[index]);
          },
        );
      },
    );
    return listview;
  }
}
//-------------------END OF long list without alert dialog------------------------------

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped - $item"),
    action: SnackBarAction(
        label: "undo",
        onPressed: () {
          debugPrint("undo - $item action");
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
