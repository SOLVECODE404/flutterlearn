import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            iconTheme: IconThemeData(color: Colors.black),
            title: Center(
              child: Text('Catalog app'),
              widthFactor: 2.5,
            ),
          ),
          body: Center(
            child: Container(
              child: Text(
                'hy',
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
          ),
          drawer: MyDrawer(),
        ),
      ),
    );
  }
}
