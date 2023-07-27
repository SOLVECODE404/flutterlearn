import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../pages/catalog.dart';
import '../../utlis/themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = catalogModel();
          _cart.catalog = _catalog;
          _cart.add(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Mytheme.darkBluishColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
