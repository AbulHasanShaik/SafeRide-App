import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/cart_item.dart';

class ProductPage extends StatelessWidget {
  final String productName;
  final String price;

  ProductPage({required this.productName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Product: $productName', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Price: $price', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false).addToCart(
                  CartItem(
                      productName: productName,
                      price: double.parse(price.replaceAll('\$', ''))),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$productName added to cart')),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
