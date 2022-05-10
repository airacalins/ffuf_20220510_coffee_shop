import 'package:flutter/material.dart';

class ProductDetailsCard extends StatelessWidget {
  final String title;
  final String category;
  const ProductDetailsCard({ 
    Key? key,
    required this.title,
    required this.category
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/coffee_bean/arabica.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black87,
            ),
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline3
                  ),
                  Chip(
                    label: Text(
                      category,
                      style: Theme.of(context).textTheme.headline6
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}