import 'package:flutter/material.dart';
import 'package:kingfresh/screen/account.dart';
import 'package:kingfresh/screen/cart.dart';
import 'package:kingfresh/screen/catalog.dart';
import 'package:kingfresh/screen/favorites.dart';
import 'package:kingfresh/screen/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    CatalogPage(),
    CartPage(),
    FavoritePage(),
    AccountPage()
  ];

  // ignore: non_constant_identifier_names
  void OnTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //BottomNavigationBar(items: null);

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          onTap: OnTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/bottomnavbar/home.svg"),
                activeIcon: new SvgPicture.asset(
                    "assets/images/bottomnavbar/home_active.svg"),
                title: new Text('Главная')),

            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/bottomnavbar/catalog.svg"),
              activeIcon: new SvgPicture.asset(
                  "assets/images/bottomnavbar/catalog_active.svg"),
              title: new Text('fgfg'),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/bottomnavbar/basket.svg"),
              activeIcon: new SvgPicture.asset(
                  "assets/images/bottomnavbar/basket_active.svg"),
              title: new Text('fgfg'),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/bottomnavbar/favorite.svg"),
              activeIcon: new SvgPicture.asset(
                  "assets/images/bottomnavbar/favorite_active.svg"),
              title: new Text('fgfg'),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/bottomnavbar/user.svg"),
              activeIcon: new SvgPicture.asset(
                  "assets/images/bottomnavbar/user_active.svg"),
              title: new Text('fgfg'),
            ),

            //BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/home.png"))
          ]),
    );
  }
}
