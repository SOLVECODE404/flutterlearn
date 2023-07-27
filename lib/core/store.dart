import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../pages/catalog.dart';

class MyStore extends VxStore{
  catalogModel catalog;
  CartModel cart;
  MyStore({required this.catalog, required this.cart});
  factory MyStore.init(){
    return MyStore(catalog: catalogModel(), cart: CartModel());
  }
}
