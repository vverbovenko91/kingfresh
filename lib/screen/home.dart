import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kingfresh/widgets/action.dart';
import 'package:kingfresh/widgets/main_rev.dart';
import 'package:kingfresh/widgets/slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(400, 1), allowFontScaling: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset("assets/images/logo.svg"),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('assets/images/search.svg'),
                      ),
                    ],
                  ),
                ),
                TopSlider(),
                SizedBox(
                  height: 40.w,
                ),
                OpisanieMain(),
                OpisanieMain(),
                OpisanieMain(),
                OpisanieMain(),
                SizedBox(
                  height: 20.0,
                ),
                /* Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ActionMain(),
                      ActionMain(),
                      ActionMain(),
                    ],
                  ),
                ),*/
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset("assets/images/home/popular_text.png"),
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
                  child: Image.asset("assets/images/home/action_text.png"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image.asset("assets/images/home/recipes.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
