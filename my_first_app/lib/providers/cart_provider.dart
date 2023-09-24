import 'package:flutter/material.dart';
import 'package:my_first_app/models/products_model.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModels> products = List.generate(
    16,
    (index) => ProductModels(
      name: 'product ${index + 1}',
      image: "https://picsum.photos/id/${250 + index}/200/300",
      price: 200 + index,
      incart: index.isEven,
      discription: 'Good Product',
    ),
  );

  List<ProductModels> cartproduct = [];
  void addtoCart(ProductModels product) {
    cartproduct.add(product);
    notifyListeners();
  }

  void removeFormcart(int index) {
    cartproduct.removeAt(index);
    notifyListeners();
  }
}
