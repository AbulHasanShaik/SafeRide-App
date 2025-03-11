import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/cart_item.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartProvider.cartItems.length,
        itemBuilder: (context, index) {
          final item = cartProvider.cartItems[index];
          return ListTile(
            title: Text(item.productName),
            subtitle: Text('Quantity: ${item.quantity}'),
            trailing: Text('\$${item.price.toStringAsFixed(2)}'),
            onTap: () {
              // Optionally, navigate to product details
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Proceed to checkout
        },
        child: Icon(Icons.payment),
      ),
    );
  }
}
