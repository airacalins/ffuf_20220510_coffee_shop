// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title = 'Cappuccino';
  final String image = 'assets/images/coffee_bean/arabica.jpg';
  final String category = 'Coffee Bean';
  final double price = 300.00;

  const ProductCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              0.1,
              0.9,
            ],
            colors: [
             Theme.of(context).colorScheme.onBackground,
             Theme.of(context).colorScheme.background
            ],
          ),
          borderRadius: const BorderRadius.all(const Radius.circular(20)),
        ),
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                      borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
                      color: Theme.of(context).colorScheme.background,
                    ),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
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
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  height: 40.0,
                  width: 40.0,
                  child: IconButton(
                    splashRadius: 30,
                    onPressed: () {}, 
                    icon: const Icon(Icons.add),
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