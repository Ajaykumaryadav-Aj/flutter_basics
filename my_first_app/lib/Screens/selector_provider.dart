import 'package:flutter/material.dart';
import 'package:my_first_app/models/products_model.dart';
import 'package:my_first_app/screens/cart_screen.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class SelectorScreen extends StatefulWidget {
  const SelectorScreen({super.key});

  @override
  State<SelectorScreen> createState() => _ProductModelsState();
}

class _ProductModelsState extends State<SelectorScreen> {
  late CartProvider provider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    provider = Provider.of<CartProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cartscreen(),
                  ));
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.amber,
            ),
          )
        ],
        title: const Text('Product'),
      ),
      body: Selector<CartProvider, List<ProductModels>>(
          selector: (p0, p1) => p1.products,
          builder: (context, products, child) {
            return GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 2 / 5),
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    Image.network(
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].name,
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            products[index].discription,
                            style: const TextStyle(fontSize: 13),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'RS.${products[index].price}',
                              style: const TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              if (provider.cartproduct
                                  .contains(products[index])) {
                              } else {
                                provider.Addtocart(products[index]);
                              }
                              setState(() {});
                              provider.Addtocart(products[index]);
                            },
                            icon: Icon(
                                provider.cartproduct.contains(products[index])
                                    ? Icons.done
                                    : Icons.shopping_cart),
                            label: Text(
                                provider.cartproduct.contains(products[index])
                                    ? 'Added'
                                    : 'Add to cart'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
