import 'package:catalog/pages/catalog.dart';

class CartModel
{

  static final cartModel = CartModel._internal();
  
  CartModel._internal();

  factory CartModel() => cartModel;

  late catalogModel _catalog;

  final List<int> _itemIds = [];

  catalogModel get catalog=> _catalog;

  set catalog(catalogModel newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;
  }


  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);  

      void add(Item item){
        _itemIds.add(item.id);
      }

    void remove(Item item){
      _itemIds.remove(item.id);
    }
}

