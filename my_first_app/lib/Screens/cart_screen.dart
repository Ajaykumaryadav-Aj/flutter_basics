import 'package:flutter/material.dart';
import 'package:my_first_app/models/products_model.dart';
import 'package:my_first_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
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
        title: const Text('Cart'),
      ),
      body: Consumer<CartProvider>(builder: (context, cart, child) {
        return cart.cartproduct.isEmpty
            ? Center(child: Text('Your cart is empty'))
            : ListView.builder(
                itemCount: cart.cartproduct.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: Image.network(
                      cart.cartproduct[index].image,
                      height: 40,
                      width: 40,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.green,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    title: Text(cart.cartproduct[index].name),
                    subtitle: Text(cart.cartproduct[index].discription),
                    trailing: IconButton(
                      onPressed: () {
                        provider.removeFormcart(index);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.orange,
                      ),
                    ),
                  );
                },
              );
      }),
    );
  }
}
