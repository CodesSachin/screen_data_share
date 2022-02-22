import 'package:flutter/material.dart';
import './product_list_screen.dart';
import './single_product_screen.dart';
import './dummy_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // hide the debug banner
      debugShowCheckedModeBanner: false,
      title: "Kindacode.com",
      home: ProductListScreen(),
      routes: {
        "single-product": (context) => SingleProductScreen(),
      },
    );
  }
}