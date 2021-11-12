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
        title: Text(
          "Nietzsche's background",
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
            height: 400,
            width: 700,
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'German Philosopher Friedriche Nietzsche was born on October 15, 1844 at Röcken bei Lützen, a small village in Prussia, Germany.'
                +'\nIn 1869, Nietzsche took a position as a professor of classical philology at the University of Basel in Switzerland. During his time of being a professor, he published his first 2 books, The Birth of Tragedy(1872) and Human, All To Human(1878).'
                +'\nHe distanced himself to his profession in that time and takes interest on the values underlying moder-day civilization.'
                +'\n\nEducation: '+'\nSchulptra school'+'\nUniversity of Bonn(1864)'+'\nUniversity of Leipzig(Studied philology)',
                style: TextStyle(fontSize: 16, color: Colors.black),
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