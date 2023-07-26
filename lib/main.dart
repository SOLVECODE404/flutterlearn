import 'package:catalog/pages/home_page_detail.dart';
import 'package:catalog/pages/homepage.dart';
import 'package:catalog/utlis/routes.dart';
import 'package:catalog/utlis/themes.dart';
import 'package:flutter/material.dart';
import 'package:catalog/pages/login.dart';

void main() {
  runApp(MyApp());
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
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
