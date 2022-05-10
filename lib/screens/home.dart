
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/defaults/bottom_navigation.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeNavigationIndex = 0;

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
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          elevation: 60,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
          currentIndex: activeNavigationIndex,
          onTap: (value) => setState(() => activeNavigationIndex = value),
          items: [
            BottomNavigationBarItem(
              icon: Icon(BottomNavigation.bottomNavIcon[0]),
              backgroundColor: Theme.of(context).colorScheme.background,
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(BottomNavigation.bottomNavIcon[1]),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(BottomNavigation.bottomNavIcon[2]),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(BottomNavigation.bottomNavIcon[3]),
              label: ""
            ),
          ],
      ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 250,
              child: Text(
                'Find the best coffee for you',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        )
      ),
    );
  }
}