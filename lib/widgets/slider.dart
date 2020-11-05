import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSlider extends StatefulWidget {
  @override
  _TopSliderState createState() => _TopSliderState();
}

class _TopSliderState extends State<TopSlider> {
  PageController pageController =
      PageController(initialPage: 1, viewportFraction: 0.8);
  final List<String> _images = [
    'assets/images/slider.png',
    'assets/images/slider.png',
    'assets/images/slider.png',
    'assets/images/slider.png',
  ];

  final List<Function> _actions = List.generate(3, (index) => () {});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          child: Container(
            height: 225.w,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {});
              },
              itemCount: 3,
              controller: pageController,
              itemBuilder: (_, _index) {
                return CardItem(
                  image: _images[_index],
                  action: _actions[_index],
                  height: 215.w,
                  width: 300.w,
                  //margin: EdgeInsets.symmetric(horizontal: 7.5.w)
                );
              },
            ),
          ),
        ),
        Container(
          height: 7.5.w,
          width: 35.w,
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 7.5.w,
                      width: 7.5.w,
                      decoration: BoxDecoration(
                          color: Color(0xFF969696),
                          borderRadius: BorderRadius.circular(100))),
                  Container(
                      height: 7.5.w,
                      width: 7.5.w,
                      decoration: BoxDecoration(
                          color: Color(0xFF969696),
                          borderRadius: BorderRadius.circular(100))),
                  Container(
                      height: 7.5.w,
                      width: 7.5.w,
                      decoration: BoxDecoration(
                          color: Color(0xFF969696),
                          borderRadius: BorderRadius.circular(100))),
                ],
              ),
              AnimatedPositioned(
                left: ((pageController.hasClients)
                        ? pageController.page.round()
                        : 1) *
                    40.w /
                    3,
                width: 7.5.w,
                height: 7.5.w,
                curve: Curves.easeInOutQuart,
                duration: Duration(milliseconds: 500),
                child: RoundedGradientLine(height: 700.5.w, width: 700.5.w),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function action;
  final double height;
  final double width;
  final double titleFontSize;
  final EdgeInsets margin;
  final TextAlign textAlign;
  const CardItem(
      {this.title = '',
      this.subtitle = '',
      this.image,
      this.action,
      this.height,
      this.width,
      this.margin = EdgeInsets.zero,
      this.titleFontSize,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(left: 14.w, top: 20.w),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
            ),
            Text(
              subtitle,
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedGradientLine extends StatelessWidget {
  final double height;
  final double width;
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;

  const RoundedGradientLine(
      {this.height = 10,
      this.width = 10,
      this.firstColor = const Color(0xFFFAD412),
      this.secondColor = const Color(0xFFF69219),
      this.thirdColor = const Color(0xFFF25821)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: (width >= height) ? width : height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        //gradient: LinearGradient(
        //  begin: Alignment.centerLeft,
        //  end: Alignment.centerRight,
        //  colors: [firstColor, secondColor, thirdColor],
        //  stops: [0, 0.5, 1],
        // ),
        color: Color(0xFF282C50),
      ),
    );
  }
}
