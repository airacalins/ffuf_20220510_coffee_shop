
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/product.dart';
import 'package:flutter_snippet/services/mock_product_service.dart';
import 'package:flutter_snippet/widgets/list/product_horizontal_grid.dart';
import 'package:flutter_snippet/widgets/widgets.dart';
import 'package:flutter_snippet/widgets/loading/loading_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final mockProductService = MockProductService();

  AppBar appBar = AppBar(
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockProductService.getProducts(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Scaffold(
              appBar: appBar,
              bottomNavigationBar: BottomNavigation(),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeBanner(),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: AppBar(
                      elevation: 0,
                      bottom: TabBar(
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          Tab(text: "Coffee Beans",
                          ),
                          Tab(text: "Hot Coffee",
                          ),
                          Tab(text: "Cold Coffee",
                          ),
                        ],
                      ),
                    ),
                  ),

                  ProductHorizontalGrid(products: snapshot.data ?? [])

                  // Container(
                  //   child: Row(
                  //     children: 
                  //       [
                  //         SampleProductCard(),
                  //         SampleProductCard()
                  //       ]
                  //   )
                  // )
                  
                  // Container(
                  //   child: Row(
                  //     // ignore: prefer_const_literals_to_create_immutables
                  //     children: 
                  //       (snapshot.data ?? [])
                  //         .map((product) => ProductCard(product: product))
                  //         .toList()
                  //   ),
                  // )
                ],
              )
            ),
          );
        }
        else {
          return const LoadingIndicator();
        }
      } 
    );
  }
}