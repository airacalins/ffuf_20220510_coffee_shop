// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Orders'
      ),
    );
  }
}