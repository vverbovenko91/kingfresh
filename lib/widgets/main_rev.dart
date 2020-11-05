import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OpisanieMain extends StatelessWidget {
  const OpisanieMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        child: Column(children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/images/icon/main_delivery.svg'),
              SizedBox(width: 20.0),
              Expanded(
                flex: 2,
                child: Text(
                  'Бесплатная доставка',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SvgPicture.asset('assets/images/icon/main_next.svg'),
            ],
          )
        ]));
  }
}
