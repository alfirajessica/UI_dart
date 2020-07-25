import 'dart:math';

import 'package:flutter/material.dart';

//------------------------ calculator ui and logic ------------------------------
class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SInterestCal(),
    );
  }
}

class SInterestCal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SInterestCal();
  }
}

class _SInterestCal extends State<SInterestCal> {
  var _currencies = ["Rupiah", "Dollars", "Pounds"];

  final _minPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(_minPadding),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: _minPadding, bottom: _minPadding),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Principal',
                    hintText: 'Enter Principal',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _minPadding, bottom: _minPadding),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Rate of Interest',
                    hintText: 'in percent',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0))),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      labelText: "Rate of Interest",
                      hintText: "in percent",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0))),
                )),
                Expanded(
                    child: DropdownButton<String>(
                  items: _currencies.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: "Rupiah",
                  onChanged: (String newValueSelected) {},
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                        color: Colors.amberAccent,
                        child: Text("Calculate"),
                        onPressed: () {})),
                Expanded(
                    child: RaisedButton(
                        color: Colors.redAccent,
                        child: Text("Reset"),
                        onPressed: () {})),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(_minPadding * 2),
              child: Text("To do text"),
            ),
          ],
        ),
      ),
    );
  }
}
