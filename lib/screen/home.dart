import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Container(
          alignment: Alignment.topCenter,
          child:
         ListView(
          children: <Widget>[
            Image.asset("assets/images/logo_2.png"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: 
             Image.asset("assets/images/home/slider_1.png"),
             ),
             SizedBox(
               height: 40.0,
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20.0),
               child:
             Image.asset("assets/images/home/button.png"),
             ),
             SizedBox(
               height: 20.0,
             ),
            Container(
               padding: EdgeInsets.symmetric(horizontal: 20.0),
               child:
             Image.asset("assets/images/home/popular_text.png"),
             ),
             SizedBox(
               height: 20.0,
             ),
             Image.asset("assets/images/home/popular_image.png"),
SizedBox(       
               height: 20.0,
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20.0),
               child:
             Image.asset("assets/images/home/action_text.png"),
             ),
             SizedBox(
               height: 20.0,
             ),
             Container(
              // padding: EdgeInsets.symmetric(horizontal: 20.0),
               child:
             Image.asset("assets/images/home/recipes.png"),
             ),
          ],


      ),
      ),
      ),
    );
  }
}