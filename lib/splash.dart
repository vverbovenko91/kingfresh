import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kingfresh/screen/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg.png"),
        fit: BoxFit.cover,
      )),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 2,
            child: SvgPicture.asset("assets/images/logo.svg"),
          )
        ],
      ),
    ));
  }
}
