import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[

        ListView(
          children: <Widget>[
            Image.asset("assets/images/account/account.png"),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: 
            
            Image.asset("assets/images/account/account_1.png"),),

          ],
        )
        ],
      ),
      
    );
  }
}