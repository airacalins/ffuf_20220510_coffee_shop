
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_snippet/widgets/bottom_navigation/bottom_navigation.dart';
import 'package:flutter_snippet/widgets/card/coffee_card.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              )
            )
          ],
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigation(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 300,
              child: Text(
                'Find the best coffee for you',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CoffeeCard(),
                  CoffeeCard()
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}