// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/product.dart';
import 'package:flutter_snippet/services/category_service.dart';
import 'package:flutter_snippet/services/product_service.dart';
import 'package:flutter_snippet/widgets/loading/loading_indicator.dart';
import 'package:flutter_snippet/widgets/text/headline_4.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  final productService = ProductService();
  final categoryService = CategoryService();

  ProductDetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;

    return FutureBuilder(
      future: productService.getProductById(productId),
      builder:(BuildContext context, AsyncSnapshot<Product> snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: ProductDetailsCard(title: snapshot.data!.title, category: 'a')
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Subtitle1('Size'),
                          SizesButtonGroup(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Subtitle1('Price'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Text(
                                      '₱ ',
                                      style: Theme.of(context).textTheme.headline4,
                                    ),
                                    Headline4(snapshot.data!.price.toStringAsFixed(2))
                                    
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: ElevatedButton(
                                  onPressed: () {}, 
                                  child: Text('Buy Now')),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
              
            ),
          );
        }
        else {
          return LoadingIndicator();
        }
      }
    );

    // const String title = 'Cappuccino';
    // const String image = 'assets/images/coffee_bean/arabica.jpg';
    // const String category = 'Coffee Bean';
    // const double price = 300.00;


    // return SafeArea(
    //   child: Scaffold(
    //     body: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Expanded(
    //           flex: 5,
    //           child: ProductDetailsCard(title: productId, category: category)
    //         ),
    //         Expanded(
    //           flex: 1,
    //           child: Container(
    //             margin: EdgeInsets.symmetric(horizontal: 10),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               // ignore: prefer_const_literals_to_create_immutables
    //               children: [
    //                 Subtitle1('Size'),
    //                 SizesButtonGroup(),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Expanded(
    //           flex: 1,
    //           child: Container(
    //             margin: EdgeInsets.symmetric(horizontal: 15),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Subtitle1('Price'),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Expanded(
    //                       flex: 1,
    //                       child: Row(
    //                         children: [
    //                           Text(
    //                             '₱ ',
    //                             style: Theme.of(context).textTheme.headline4,
    //                           ),
    //                           Headline4(price.toStringAsFixed(2))
                              
    //                         ],
    //                       ),
    //                     ),
    //                     Expanded(
    //                       flex: 2,
    //                       child: ElevatedButton(
    //                         onPressed: () {}, 
    //                         child: Text('Buy Now')),
    //                     )
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         )
    //       ],
    //     )
        
    //   ),
    // );
  }
}