import 'package:flutter/material.dart';
import 'package:ui_dart/app_screens/Listview.dart';
import 'package:ui_dart/app_screens/Longlist.dart';

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
            Imageshow(), //call class Imageshow
            Buttonbook()
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

//----------- button ---------------------
class Buttonbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        RaisedButton(
          color: Colors.deepOrange,
          child: Text("Listview custom"),
          elevation: 6.0,
          onPressed: () {
            //bookFlight(context); //call alertdialog
            // pindah ke halaman Listview.dart
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Listview(),
                ));
          },
        ),
        RaisedButton(
          color: Colors.deepPurple,
          child: Text("LongList"),
          elevation: 6.0,
          onPressed: () {
            //bookFlight(context); //call alertdialog
            // pindah ke halaman Longlist.dart
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Longlist(),
                ));
          },
        ),
      ],
    ));
  }
}

class Detailflight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Penerbangan'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.deepOrange,
          child: Text("Back to halaman depan"),
          elevation: 6.0,
          onPressed: () {
            //balik ke halaman sebelumnya
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

//---------- show alert ---------------
void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Flight booked successfully'),
    content: Text('ini isi konten'),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

//----------- navigate to other page ---------------
