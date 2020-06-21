import 'package:flutter/material.dart';
import 'package:kingfresh/screen/account.dart';
import 'package:kingfresh/screen/cart.dart';
import 'package:kingfresh/screen/catalog.dart';
import 'package:kingfresh/screen/favorites.dart';
import 'package:kingfresh/screen/home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int _currentIndex = 0;
final List <Widget> _children = [
    HomePage(),
    CatalogPage(),
    CartPage(),
    FavoritePage(),
    AccountPage()
];

void OnTappedBar (int index)
{
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
            BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/home.png"),
                                    activeIcon:new Image.asset("assets/images/bottomnavbar/home_active.png"),
            title: new Text('dfdf')),
    
            BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/menu.png"),
                                    activeIcon:new Image.asset("assets/images/bottomnavbar/menu_active.png"),
            title: new Text('fgfg'),
            ),
            BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/cart.png"),
                                    activeIcon:new Image.asset("assets/images/bottomnavbar/cart_active.png"),
            title: new Text('fgfg'),
            ),
            BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/favorites.png"),
                                    activeIcon:new Image.asset("assets/images/bottomnavbar/favorite_active.png"),
            title: new Text('fgfg'),
            ),
            BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/account.png"),
                                    activeIcon:new Image.asset("assets/images/bottomnavbar/account_active.png"),
            title: new Text('fgfg'),
            ),
        
        
        //BottomNavigationBarItem(icon: Image.asset("assets/images/bottomnavbar/home.png"))
        
      ]),
    );
  }
}