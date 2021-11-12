
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ly(),
      theme: new ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class ly extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new lyState();
  }
}

class lyState extends State<ly> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text(
          "Nietzsche's later years",
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
              'pics/fne.jpg'),
            ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 300,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Friedrich Nietzsche collapsed on 1889 in Turin, Italy. His following decades was spent in a state of mental incapacitation. The reason was not known.'
                +' Others claimed that it was Syphilis, a brain disease, which triggered because of drugs.'
                +'\n\nAfter his stay in the asylum, he was cared by his mother and sister.'
                +" Nietzsche died at his sister's place at Weimar, Germany in August 25, 1900",
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