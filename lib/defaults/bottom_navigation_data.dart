import 'package:flutter/material.dart';
import 'package:flutter_snippet/screens/favorite/favorite_screen.dart';
import 'package:flutter_snippet/screens/order/orders_screen.dart';
import 'package:flutter_snippet/screens/product/products_screen.dart';

class BottomNavigationData {

  static const bottomNavIcon = [
    Icons.home,
    Icons.category,
    Icons.shopping_bag,
    Icons.favorite,
  ];

  static const screens = [
    Center(child: Text('Home')),
    Center(child: Text('Categories')),
    Center(child: Text('Shopping Bag')),
    Center(child: Text('Favorites')),
  ];

  static const screenRoutes = [
    '/',
    ProductsScreen.routeName,
    OrdersScreen.routeName,
    FavoriteScreen.routeName,
  ];
}