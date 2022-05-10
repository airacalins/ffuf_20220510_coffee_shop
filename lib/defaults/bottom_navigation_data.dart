import 'package:flutter/material.dart';

class BottomNavigationData {

  static final bottomNavIcon = [
    Icons.home,
    Icons.shopping_bag,
    Icons.favorite,
    Icons.notifications,
  ];

  static final screens = [
    const Center(child: Text('Home')),
    const Center(child: Text('Shopping Bag')),
    const Center(child: Text('Favorites')),
    const Center(child: Text('Notifications')),
  ];
}