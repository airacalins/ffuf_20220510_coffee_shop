import 'package:flutter/material.dart';
import 'package:flutter_snippet/widgets/text/headline_1.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: 300,
      child: const Headline1('Find the best coffee for you'),
    );
  }
}