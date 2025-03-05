import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../data/dummy_data.dart'; 

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Page"),
      ),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Image.asset(
                product.imageUrl, 
                width: 100, 
                height: 100,
                fit: BoxFit.cover,
              ),
              title: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${product.name} selected!"))
                );
              },
            ),
          );
        },
      ),
    );
  }
}
