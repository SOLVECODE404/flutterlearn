import 'dart:convert';

import 'package:catalog/pages/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData=jsonDecode(catalogJson);
    var productsData=decodedData["products"];
  }

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(6, (index) => catalogModel.items[0]);
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(
                item: dummylist[index],
                key: null,
              );
            },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
