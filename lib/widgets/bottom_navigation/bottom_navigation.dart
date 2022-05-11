import 'package:flutter/material.dart';
import 'package:flutter_snippet/defaults/bottom_navigation_data.dart';
import 'package:flutter_snippet/screens/product/products_screen.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int activeNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.shifting,
      elevation: 60,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
      currentIndex: activeNavigationIndex,
      onTap: (value) => setState(() {
        Navigator.of(context).pushNamed(BottomNavigationData.screenRoutes[value]);
      }),
      items: [
        BottomNavigationBarItem(
          icon: Icon(BottomNavigationData.bottomNavIcon[0]),
          backgroundColor: Theme.of(context).colorScheme.background,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(BottomNavigationData.bottomNavIcon[1]),
          backgroundColor: Theme.of(context).colorScheme.background,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(BottomNavigationData.bottomNavIcon[2]),
          backgroundColor: Theme.of(context).colorScheme.background,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(BottomNavigationData.bottomNavIcon[3]),
          backgroundColor: Theme.of(context).colorScheme.background,
          label: "",
        ),
      ],
    );
  }
}