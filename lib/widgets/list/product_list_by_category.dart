// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/category.dart';
import 'package:flutter_snippet/models/product.dart';
import 'package:flutter_snippet/services/product_service.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductListByCategory extends StatelessWidget {
  final Category category;
  final productService = ProductService();

  ProductListByCategory(this.category, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productService.getProductsByCategoryId(category.id),
      builder:(BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          return Container(
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  child: Subtitle1(category.name)),
                Expanded(
                  child: ListView.builder(
                    itemCount: (snapshot.data ?? []).length,
                    itemBuilder: (ctx, index) => ProductTile((snapshot.data ?? [])[index])
                  )
                ),   
              ]
            ),
          );      
        }
        else {
          return LoadingIndicator();
        }
      }
    );
  }
}