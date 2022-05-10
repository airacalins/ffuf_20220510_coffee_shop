// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final String title = 'Cappuccino';
  final String image = 'assets/images/coffee_bean/arabica.jpg';
  final String category = 'Coffee Bean';
  final double price = 300.00;



  const CoffeeCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline3
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Theme.of(context).colorScheme.background,
                    ),
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      category,
                      style: Theme.of(context).textTheme.headline6
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  height: 40.0,
                  width: 40.0,
                  child: IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.add),
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}