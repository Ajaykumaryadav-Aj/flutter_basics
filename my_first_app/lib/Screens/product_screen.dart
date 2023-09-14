import 'package:flutter/material.dart';
import 'package:my_first_app/providers/cart_provider.dart';
import 'package:my_first_app/screens/cart_screen.dart';
import 'package:provider/provider.dart';


// List<Map<String, dynamic>> product = [
//   {'image': 'https://picsum.photos/200/300'}
// ];

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductModelsState();
}

class _ProductModelsState extends State<ProductScreen> {
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
      body: Consumer<CartProvider>(builder: (context, products, child) {
        return GridView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: products.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 2 / 5),
          itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                Image.network(
                  products.products[index].image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products.products[index].name,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        products.products[index].discription,
                        style: const TextStyle(fontSize: 13),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'RS.${products.products[index].price}',
                          style: const TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          if (products.cartproduct
                              .contains(products.products[index])) {
                          } else {
                            provider.Addtocart(products.products[index]);
                          }
                          provider.Addtocart(products.products[index]);
                        },
                        icon: Icon(products.cartproduct
                                .contains(products.products[index])
                            ? Icons.done
                            : Icons.shopping_cart),
                        label: Text(products.cartproduct
                                .contains(products.products[index])
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
