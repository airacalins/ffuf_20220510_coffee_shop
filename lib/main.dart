// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/defaults/bottom_navigation_data.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.blueGrey.shade900,
          onPrimary: Colors.blueGrey,
          secondary: Colors.amber.shade700,
          onSecondary: Colors.amber.shade100,
          error: Colors.red,
          onError: Colors.red.shade100,
          background: Colors.blueGrey.shade900,
          onBackground: Colors.blueGrey.shade800,
          surface: Colors.blueGrey.shade900,
          onSurface: Colors.blueGrey,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey.shade900,
        ),
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32.0, color: Colors.white, fontWeight: FontWeight.w600),
          headline2: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w500),
          headline3: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w500),
          headline4: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500),
          headline5: TextStyle(fontSize: 13.5, color: Colors.white, fontWeight: FontWeight.w400),
          headline6: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
          // headlineLarge: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w600),
          // headlineMedium: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.w600),
          // headlineSmall: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w600),          
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
        ),
        scaffoldBackgroundColor: Colors.blueGrey.shade900
      ),
      home: Home(),
    );
  }
}
