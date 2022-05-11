// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/screens/home_screen.dart';
import 'package:flutter_snippet/screens/products/product_details_screen.dart';


void main() {
  runApp(const MyApp());
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
       elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
          primary: Colors.amber.shade700,
          onPrimary: Colors.white
         )
       ),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 32.0, color: Colors.white, fontWeight: FontWeight.w600),
          headline2: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w600),
          headline3: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w500),
          headline4: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500),
          headline5: TextStyle(fontSize: 13.5, color: Colors.white, fontWeight: FontWeight.w400),
          headline6: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
          subtitle1: TextStyle(fontSize: 12.0, fontFamily: 'Poppins', color: Colors.blueGrey),
        ),
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
        tabBarTheme: TabBarTheme(
          labelColor: Colors.amber.shade700, 
          unselectedLabelColor: Colors.blueGrey,
          indicator: const BoxDecoration(
            color: Colors.transparent
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        ProductDetailsScreen.routeName: ((context) => ProductDetailsScreen())
      },
      // home: const HomeScreen(),
    );
  }
}
