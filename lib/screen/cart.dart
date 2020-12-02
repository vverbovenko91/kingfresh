import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kingfresh/screen/catalog.dart';
import 'package:kingfresh/widgets/buttons.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset('assets/images/cart/cart.svg',
                color: Color(0xFF222378)),
            Text('В корзине нет товаров'),
            Text(
              'Просто добавьте в корзину\nтовары из каталога',
              textAlign: TextAlign.center,
            ),
            SmallButton(
              'В каталог',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CatalogPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
