import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: ListView(
                children: <Widget>[
                  Image.asset("assets/images/menu/ocean.png"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset("assets/images/menu/fish.png"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset("assets/images/menu/caviar.png"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset("assets/images/menu/meet.png"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset("assets/images/menu/bakaley.png"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset("assets/images/menu/oil.png"),
                ],
              )),
        ],
      ),
    );
  }
}
