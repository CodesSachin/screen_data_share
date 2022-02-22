import 'package:flutter/material.dart';
import './dummy_data.dart';

class SingleProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    print(productId);

    // find the product that matches the id passed from the ProductListScreen
    final product = DUMMY_PRODUCTS.firstWhere((e) => e["id"] == productId);

    print(product['name']);
    return Scaffold(
      appBar: AppBar(
        title: Text('${product["name"]}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          // product name
          Text(
            "Name: ${product['name']}",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),

          // product price
          Text(
            "Price: ${product['price'].toString()}",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),

          // product description
          Text("Description ${product['description']}"),
        ]),
      ),
    );
  }
}