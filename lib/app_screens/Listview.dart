import 'package:flutter/material.dart';

//------------------------UI DART ------------------------------
class Listview extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview custom'),
        ),
        body: GetListview());
  }

  Widget GetListview() {
    var listview = ListView(children: <Widget>[
      ListTile(
        leading: Icon(Icons.add_shopping_cart),
        title: Text('cart'),
        subtitle: Text('add to cart!'),
      ),
      ListTile(
        leading: Icon(Icons.access_time),
        title: Text('Time'),
        subtitle: Text('choose time!'),
      )
    ]);
    return listview;
  }
}

//-------------------END OF UI DART ------------------------------
