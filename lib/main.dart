import 'package:catalog/models/cart.dart';
import 'package:catalog/pages/cart_page.dart';
import 'package:catalog/pages/catalog.dart';
import 'package:catalog/pages/home_page_detail.dart';
import 'package:catalog/pages/homepage.dart';
import 'package:catalog/utlis/routes.dart';
import 'package:catalog/utlis/themes.dart';
import 'package:flutter/material.dart';
import 'package:catalog/pages/login.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main() {
  runApp(VxState(
      store: MyStore(catalog: catalogModel(), cart: CartModel()),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      // themeMode: ThemeMode.light,
      theme: Mytheme.lightheme(context),
      // darkTheme: Mytheme.darktheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}
//done