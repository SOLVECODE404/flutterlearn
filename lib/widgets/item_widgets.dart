import 'package:flutter/material.dart';

import '../pages/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      // color: Colors.orange,
      child: SizedBox(
        height: 50,
        child: ListTile(
          leading: Image.asset(item.image,),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.5,
            style:
                TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
