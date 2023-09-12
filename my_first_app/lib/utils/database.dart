import '../models/products_model.dart';

List<ProductModels> products = List.generate(
  10,
  (index) => ProductModels(
      name: 'product ${index + 1}',
      image: "https://picsum.photos/id/${index + 10}/200/300",
      price: 20 + index,
      cart: 'Add to cart',
      discription: 'Good Product', bool: null
      // messages: List.generate(
      //   3,
      //   (index) => (
      //     text: 'text $index',
      //     time: TimeOfDay.now(),
      //   ),
      ),
);
