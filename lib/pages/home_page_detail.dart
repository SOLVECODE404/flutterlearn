// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:catalog/utlis/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 18),
          children: [
            "\$${catalog.price}".text.bold.xl3.red900.make().pOnly(left: 20),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Mytheme.darkBluishColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              child: "Buy".text.xl2.make(),
            ).wh(100, 50)
          ],
        ).py8(),
      ),
      appBar: AppBar(),
      backgroundColor: Mytheme.CreamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.asset(
                catalog.image,
                height: 250,
              ),
            ).px16(),
            Expanded(
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  width: context.screenWidth,
                  height: 500,
                  color: Colors.white,
                  child: Column(
                    children: [
                      30.heightBox,
                      catalog.name.text.xl4.bold
                          .color(Mytheme.darkBluishColor)
                          .make()
                          .py12(),
                      catalog.desc.text.xl.make(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ).p8(),
      ),
    );
  }
}
