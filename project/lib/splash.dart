import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

@override
class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    navigatetopush();
  }

  navigatetopush() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(
        'pics/fn1.png',
        height: 400,
        width: 400,
        color: Colors.white,
        colorBlendMode: BlendMode.darken,
        fit: BoxFit.fitWidth,
      )),
    );
  }
}