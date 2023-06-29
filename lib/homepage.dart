import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Catalog app'),
              ),
            ),
            body: Center(
              child: Container(
                child: Text('hy'),
              ),
            ),
          ),
        ));
  }
}
