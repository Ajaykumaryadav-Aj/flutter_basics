import '../models/products_model.dart';

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
