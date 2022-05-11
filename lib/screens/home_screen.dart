
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/category.dart';
import 'package:flutter_snippet/services/category_service.dart';
import 'package:flutter_snippet/widgets/list/product_horizontal_grid.dart';
import 'package:flutter_snippet/widgets/widgets.dart';
import 'package:flutter_snippet/widgets/loading/loading_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final categoryService = CategoryService();

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
      future: categoryService.getCategories(),
      builder: (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return DefaultTabController(
            length: (snapshot.data ?? []).length,
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
                        onTap:(value) {
                          print(value);
                        },
                        isScrollable: true,
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: 
                          (snapshot.data ?? [])
                            .map((category) => Tab(text: category.name),)
                            .toList()
                      ),
                    ),
                  ),
                  ProductHorizontalGrid(),
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