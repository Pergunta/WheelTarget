import 'dart:async';

import 'package:flutter_uikit/logic/viewmodel/cart_view_model.dart';
import 'package:flutter_uikit/model/product.dart';

class CartBloc {
  CartViewModel _cartViewModel;
  final additionalController = StreamController<bool>();
  final subtractionController = StreamController<bool>();
  final countController = StreamController<int>();
  Sink<bool> get addItem => additionalController.sink;
  Sink<bool> get subtractItem => subtractionController.sink;
  Stream<int> get getCount => countController.stream;

  CartBloc(Product p) {
    _cartViewModel = CartViewModel(product: p);

  }

  

  void dispose() {
    additionalController?.close();
    subtractionController?.close();
    countController?.close();
  }
}
