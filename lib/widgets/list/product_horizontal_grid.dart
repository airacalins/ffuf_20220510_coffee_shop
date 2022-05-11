// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/product.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductHorizontalGrid extends StatelessWidget {
  final List<Product> products;

  const ProductHorizontalGrid({ 
    Key? key, 
    required this.products
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 1,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) =>  ProductCard(
            product: products[index],
          ),
          itemCount: products.length,
      )
    );    
  }
}