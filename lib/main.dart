import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';
import 'screens/product_page.dart';
import 'screens/cart_page.dart';
import 'screens/profile_page.dart';
import 'providers/cart_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: SafeRideApp(),
    ),
  );
}

class SafeRideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeRide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/product': (context) => ProductPage(
              productName: 'Sample Product',
              price: '\$164.99',
            ),
        '/cart': (context) => CartPage(),
        '/profile': (context) => ProfilePage(
              name: 'Emily Thompson',
              email: 'emily.thompson@email.com',
              dob: '02/21/1989',
              phone: '605-784-1234',
            ),
      },
    );
  }
}
