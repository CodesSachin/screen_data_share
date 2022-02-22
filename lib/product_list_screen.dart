import 'package:flutter/material.dart';
import './dummy_data.dart';

class ProductListScreen extends StatelessWidget {
  // This function is triggered when the user tap on a product
  void _goToSingle(context, productId) {
    Navigator.of(context)
        .pushNamed("single-product", arguments: productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List Screen"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: DUMMY_PRODUCTS.map((singleProduct) {
          return TextButton(
              onPressed: () => _goToSingle(context, singleProduct["id"]),
              child: Text('${singleProduct["name"]}'));
        }).toList(),
      ),
    );
  }
}