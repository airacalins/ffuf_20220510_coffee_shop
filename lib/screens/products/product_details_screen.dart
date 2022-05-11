// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const String title = 'Cappuccino';
    const String image = 'assets/images/coffee_bean/arabica.jpg';
    const String category = 'Coffee Bean';
    const double price = 300.00;

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

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: ProductDetailsCard(title: title, category: category)
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
                              Text(
                                price.toStringAsFixed(2),
                                style: Theme.of(context).textTheme.headline4,
                              ),
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
}