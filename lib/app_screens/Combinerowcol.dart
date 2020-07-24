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
                Expanded(
                  child: Text("Batik Air",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic)),
                ),
                Expanded(
                    child: Text("Dari Makassar to Surabaya ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Raleway',
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic))),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Garuda Air",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic)),
                ),
                Expanded(
                  child: Text('Dari Batam to Surabaya ',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic)),
                ),
              ],
            ),
            Imageshow()
          ],
        ),
      ),
    );
  }
}

class Imageshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/back.jpg");
    Image image = Image(
      image: assetImage,
      width: 250,
      height: 250,
    );
    return Container(child: image);
  }
}
