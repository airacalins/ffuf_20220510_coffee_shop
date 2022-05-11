// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/category.dart';
import 'package:flutter_snippet/services/category_service.dart';
import 'package:flutter_snippet/widgets/list/product_list_by_category.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductsScreen extends StatelessWidget {
  static const routeName = '/products';
  final categoryService = CategoryService();
  
  ProductsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text(
        'Products',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 18
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          )
        )
      ],
      elevation: 0,
    );

    return FutureBuilder(
      future: categoryService.getCategories(),
      builder: (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            appBar: appBar,
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: (snapshot.data ?? []).length,
                itemBuilder: (ctx, index) => ProductListByCategory((snapshot.data ?? [])[index])
              )
              //  Column(
                
              //   children: (snapshot.data ?? [])
              //     .map((category) => ProductListByCategory(category) )
              //     .toList(),
              // )
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