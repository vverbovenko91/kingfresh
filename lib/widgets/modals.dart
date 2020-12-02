import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future loginShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: ScreenUtil().screenHeight - 50.w,
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 180.w),
                    child: Text(
                      'Вход',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120.w),
                    child: IconButton(
                        icon: SvgPicture.asset(
                            'assets/images/icon/close_icon.svg'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
              SizedBox(height: 46.w),
              Loginbutton(
                title: 'Используя телефон',
                image: 'assets/images/icon/phone.svg',
              ),
              SizedBox(height: 10.0),
              Loginbutton(
                title: 'Используя email',
                image: 'assets/images/icon/email.svg',
              ),
              SizedBox(height: 40.w),
              Text(
                'Или через соцсети',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.w),
              Image.asset('assets/images/btn/facebook.png'),
              SizedBox(height: 10.w),
              Image.asset('assets/images/btn/twitter.png'),
              SizedBox(height: 10.w),
              Image.asset('assets/images/btn/vk.png'),
              SizedBox(height: 30.w),
              GestureDetector(
                onTap: () {
                  registerShowModalBottomSheet(context);
                },
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF0070A7)),
                ),
              ),
            ],
          ),
        );
      });
}

Future registerShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: ScreenUtil().screenHeight - 50.w,
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 140.w),
                    child: Text(
                      'Регистрация',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100.w),
                    child: IconButton(
                        icon: SvgPicture.asset(
                            'assets/images/icon/close_icon.svg'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
            ],
          ),
        );
      });
}

class Loginbutton extends StatelessWidget {
  final String title;
  final Function press;
  final String image;

  const Loginbutton({
    this.title,
    this.press,
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.w,
        height: 50.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD6E2EA)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: FlatButton(
            onPressed: press,
            child: Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Row(
                children: [
                  SvgPicture.asset(image),
                  Text(
                    title,
                    style: TextStyle(color: Color(0xFF0070A7)),
                  ),
                ],
              ),
            )));
  }
}
