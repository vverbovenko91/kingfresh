import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kingfresh/widgets/buttons.dart';
import 'package:kingfresh/widgets/style.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 91.w),
                child: Center(
                  child: Image.asset('assets/images/favorites/favorite.png'),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 30.w),
                      child: Text(
                        'В избранном нет товаров',
                        style: h3,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 10.w),
                      child: Text(
                        'Авторизуйтесь или зарегистрируйтесь, чтобы воспользоваться списком.',
                        style: text5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30.w),
                      child: SmallButton(
                        'Войти',
                        press1: showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                                  color: Colors.red,
                                  child: Text('sadsddsf'),
                                )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
