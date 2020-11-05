import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButton extends StatelessWidget {
  final String title;
  final Function press;
  final Color color;
  final Future<dynamic> press1;

  SmallButton(
    this.title, {
    Key key,
    this.press,
    this.color = const Color(0xFF0070A7),
    this.press1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.w,
        width: 220.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: FlatButton(
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            )));
  }
}

class MediumButton extends StatelessWidget {
  final String title;
  final Function press;
  final Color color;
  MediumButton({
    Key key,
    this.title,
    this.press,
    this.color = const Color(0xFF0070A7),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.w,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: FlatButton(
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            )));
  }
}

extension WidgetModifier on Widget {
  Widget padding([EdgeInsetsGeometry value = const EdgeInsets.all(16)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
}
