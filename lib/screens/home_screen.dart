
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_snippet/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:flutter_snippet/widgets/card/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: appBar,
        bottomNavigationBar: BottomNavigation(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              width: 300,
              child: Text(
                'Find the best coffee for you',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
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
            Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ProductCard(),
                  ProductCard()
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}