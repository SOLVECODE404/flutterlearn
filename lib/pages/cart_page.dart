import 'package:catalog/utlis/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mytheme.CreamColor,
        appBar: AppBar(
          backgroundColor: Mytheme.CreamColor,
          title: "Cart".text.xl3.bold.make(),
          titleSpacing: 110,
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
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(builder: (context,_,__){
            return "\$${_cart.totalPrice}"
              .text
              .xl4
              .bold
              .color(Mytheme.darkBluishColor)
              .make()
              .pOnly(left: 30);
              },
              mutations:{RemoveMutation}),
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

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;

    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.make().centered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                onPressed: () {
                  RemoveMutation(_cart.items[index]);
                },
                icon: Icon(Icons.remove_circle_outline),
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
