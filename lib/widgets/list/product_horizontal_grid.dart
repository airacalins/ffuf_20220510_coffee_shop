// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/product.dart';
import 'package:flutter_snippet/screens/products/product_details_screen.dart';
import 'package:flutter_snippet/services/product_service.dart';
import 'package:flutter_snippet/widgets/loading/loading_indicator.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductHorizontalGrid extends StatelessWidget {
  final productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productService.getProducts(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            height: 250,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 1,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) =>  
                  ProductCard(product: (snapshot.data ?? [])[index],),
                itemCount: (snapshot.data ?? []).length,
            )
          );
        }
        else {
          return LoadingIndicator();
        }
      }
    );    
  }
}