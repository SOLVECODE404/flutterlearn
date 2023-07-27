import 'package:catalog/utlis/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mytheme.CreamColor,
        appBar: AppBar(
          backgroundColor: Mytheme.CreamColor,
          title: "Cart".text.xl.bold.make(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999"
              .text
              .xl4
              .bold
              .color(Mytheme.darkBluishColor)
              .make()
              .pOnly(left: 30),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: "Buying not supported yet ...".text.make(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Mytheme.darkBluishColor)),
                  child: "Buy"
                      .text
                      .white
                      .center
                      .xl3
                      .make()
                      .wh(60, 35)
                      .pOnly(top: 8))
              .w32(context),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_circle_outline),
              ),
              title: "Item 1".text.make(),
            ));
  }
}
