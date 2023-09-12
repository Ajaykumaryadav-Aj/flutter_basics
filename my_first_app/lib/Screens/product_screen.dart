import 'package:flutter/material.dart';
import 'package:my_first_app/utils/database.dart';

// List<Map<String, dynamic>> product = [
//   {'image': 'https://picsum.photos/200/300'}
// ];

class ProductModels extends StatefulWidget {
  const ProductModels({super.key});

  @override
  State<ProductModels> createState() => _ProductModelsState();
}

class _ProductModelsState extends State<ProductModels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: GridView.builder(
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
                        products[index].price.toString(),
                        style: const TextStyle(fontSize: 23),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.card_travel),
                      label: Text(products[index].cart),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
