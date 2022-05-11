// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_snippet/widgets/widgets.dart';

import '../../models/product.dart';


class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: AssetImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline4
                    ),
                    Container(
                      child: Headline5(product.price.toStringAsFixed(2))
                    ),
                  ],
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}