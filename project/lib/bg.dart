import 'dart:ui';

import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new bg(),
      theme: new ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class bg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new bgState();
  }
}

class bgState extends State<bg> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        centerTitle: true,
        title: Text(
          "Nietzsche's background",
          style: TextStyle(color: Colors.black),
          ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                navigatetopushdash();
              }),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Container(
            height: 200,
            width: 600,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Image.asset(
              'pics/fne.jpg'),
            ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 110,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Jasdwa',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  navigatetopushdash() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => dashboard()));
  }
}