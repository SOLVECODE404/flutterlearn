import 'package:catalog/pages/home_page_detail.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../utlis/themes.dart';
import '../../pages/catalog.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModel.items.length,
      itemBuilder: (BuildContext context, int index) {
        final catalog = catalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalog,
              ),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.asset(catalog.image)
                .box
                .rounded
                .p8
                .color(Mytheme.CreamColor)
                .make()
                .py8()
                .px8()
                .w40(context),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,
              catalog.name.text.xl2.bold
                  .color(Mytheme.darkBluishColor)
                  .make()
                  .py4(),
              catalog.desc.text.xl.make(),
              4.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mOnly(right: 18),
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Mytheme.darkBluishColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: "Cart".text.make(),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    ).white.roundedLg.square(140).make().py8();
  }
}
