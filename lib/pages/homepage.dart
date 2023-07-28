import 'dart:convert';

import 'package:catalog/models/cart.dart';
import 'package:catalog/pages/catalog.dart';
import 'package:catalog/utlis/themes.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import '../utlis/routes.dart';
import '../widgets/homepage_widgets/catalog_header.dart';
import '../widgets/homepage_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    catalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    // final dummylist = List.generate(6, (index) => catalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title:
            "Catalog App".text.xl3.bold.color(Mytheme.darkBluishColor).make(),
        titleSpacing: 80,
      ),
      drawer: MyDrawer(),
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (ctx, _, __) => FloatingActionButton(
          backgroundColor: Mytheme.darkBluishColor,
          onPressed: () => Navigator.pushNamed(context, MyRoutes.CartRoute),
          child: Icon(
            CupertinoIcons.cart,
          ),
        ).badge(
          color: Vx.orange500,
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          size: 22,
          count: _cart.items.length,
        ),
      ),
      backgroundColor: Mytheme.CreamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.mH16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyHeader(),
              if (catalogModel.items != null && catalogModel.items.isNotEmpty)
                CatalogList().py8().expand()
              else
                Center(
                  child: CircularProgressIndicator(
                    color: Mytheme.darkBluishColor,
                    // strokeWidth: 40,
                  ),
                ).centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
