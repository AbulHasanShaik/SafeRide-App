import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeRide'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Adults'),
            onTap: () {
              // Navigate to Adults page
            },
          ),
          ListTile(
            title: Text('Kids'),
            onTap: () {
              // Navigate to Kids page
            },
          ),
          ListTile(
            title: Text('Accessories'),
            onTap: () {
              // Navigate to Accessories page
            },
          ),
          ListTile(
            title: Text('Sale'),
            onTap: () {
              // Navigate to Sale page
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/cart');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }
}
