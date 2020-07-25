import 'package:flutter/material.dart';

//------------------------UI DART ------------------------------
class Statefulwidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull Widget'),
      ),
      body: YourAddress(),
    );
  }
}

class YourAddress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _YourAddress();
  }
}

class _YourAddress extends State<StatefulWidget> {
  String namaKota, namaProvinsi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Masukkan kota anda"),
              onChanged: (String userInput) {
                setState(() {
                  namaKota = userInput;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "Masukkan provinsi anda"),
              onChanged: (String userInput) {
                setState(() {
                  namaProvinsi = userInput;
                });
              },
            ),
            Text("Kota tinggal = $namaKota, Provinsi tinggal = $namaProvinsi"),
          ],
        ),
      ),
    );
  }
}
