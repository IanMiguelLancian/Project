import 'package:flutter/material.dart';
import 'splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown, 
      fontFamily: 'Kaushan',
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'Kaushan',
            fontSize: 25,
          ),
        ),
      ),
      ),
      home: const Splash(),
    );
  }
}