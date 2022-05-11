// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/models.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(product.imageUrl),
      ),
      title: Headline4(product.title),
      subtitle: Text(product.price.toStringAsFixed(2)),
      trailing: Icon(Icons.add),
      );
  }
}