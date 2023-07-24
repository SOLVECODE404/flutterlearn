import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightheme(BuildContext context) => ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ));

  // static ThemeData darktheme(BuildContext context) => ThemeData(
  //       brightness: Brightness.dark,
  //     );
  static Color CreamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
