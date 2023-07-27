// import 'dart:html';

import 'package:flutter/material.dart';

class catalogModel {

  static List<Item> items = [
    // Item(
    //   id: 1,
    //   name: "Iphone 12 pro",
    //   desc: "Apple pro features",
    //   price: 9999,
    //   color: "#33505a",
    //   image: "assets/images/iphone12.jpg",
    // )
  ];
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
