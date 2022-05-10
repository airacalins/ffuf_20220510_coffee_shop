// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

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

    return Scaffold(
      appBar: appBar,
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Coffee Bean',
              style: Theme.of(context).textTheme.subtitle1,
              ),
            Divider(),
            
          ],
        ),
      ),
    );
  }
}