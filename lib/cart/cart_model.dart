import 'package:flutter/foundation.dart';

import '../product.dart';

class CartModel extends ChangeNotifier {
  final List<Product> _listProducts = <Product>[];
  List<Product> get listProducts => _listProducts;

  void add(Product product) {
    _listProducts.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _listProducts.remove(product);
    notifyListeners();
  }

  List<Product> get() => _listProducts;
}
