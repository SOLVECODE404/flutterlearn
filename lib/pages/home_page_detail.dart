// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:catalog/utlis/themes.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/homepage_widgets/add_to_cart.dart';
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
            AddToCart(
              catalog: catalog,
            ).wh(100, 50)
          ],
        ).py8(),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
      ),
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
                      30.heightBox,
                      "Aut at illo dolorem quisquam. Veritatis ad molestias nostrum beatae animi aut. Et ut quibusdam minima rem assumenda possimus voluptate cum."
                          .text
                          .xl
                          .textStyle(context.captionStyle)
                          .make()
                          .px32()
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
