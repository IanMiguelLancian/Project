import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/splash.dart';
import 'bg.dart';
import 'works.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
   navigatetopushbg() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => bg()));
  }
  navigatetopushworks(){
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => works()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        centerTitle: true,
        title: Text(
          'Friedrich Nietzsche',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'pics/fne.jpg',
                  height: 400,
                  width: 300,
                  color: Colors.white,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      navigatetopushbg();
                      },
                    color: Colors.brown[300],
                    child: Text(
                      "Nietzsche's background",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                 ),
                   SizedBox(
                  height: 10,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      navigatetopushworks();
                    },
                    color: Colors.brown[300],
                    child: Text(
                      "Nietzsche's works",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                 ),
              ]),
          ),
        ),
      ),
    );
  
  }
}

