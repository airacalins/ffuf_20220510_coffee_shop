import 'package:flutter/material.dart';
import 'package:flutter_snippet/models/models.dart';
import 'package:flutter_snippet/widgets/chip/primary_chip.dart';

class ProductDetailsCard extends StatelessWidget {
  final Product product;

  const ProductDetailsCard(this.product, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(product.imageUrl),
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
                    product.title,
                    style: Theme.of(context).textTheme.headline3
                  ),
                  PrimaryChip(product.categoryId)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}