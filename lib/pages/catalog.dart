// import 'dart:html';

import 'package:flutter/material.dart';

class catalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Iphone 12 pro",
      desc: "Apple pro features",
      price: 999,
      color: "#33505a",
      image: Container(
        child: Image.asset(
          "assets/images/iphone12.jpg",
          fit: BoxFit.cover,
          width: 40,
        ),
      ),
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
