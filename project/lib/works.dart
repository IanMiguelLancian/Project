
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new works(),
      theme: new ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class works extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new worksState();
  }
}

class worksState extends State<works> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text(
          "Nietzsche's works",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              color: Colors.black,
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
              'pics/works.png'),
            ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 275,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '- The Birth of Tragedy (1872)'
                +'\n- Human, All Too Human (1878)'
                +'\n- Daybreak (1881)'
                +'\n- The Gay Science (1882)'
                +'\n- Thus Spoke Zarathustra (Between 1883-1885)'
                +'\n- Beyond Good and Evil (1886)'
                +'\n- The Genealogy of Morals (1887)'
                +'\n- The Antichrist (1888)'
                +'\n- Twilight of the Idols (1889)',
                style: TextStyle(fontSize: 17, color: Colors.black),
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