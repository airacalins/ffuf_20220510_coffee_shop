import 'package:flutter/material.dart';

class Headline5 extends StatelessWidget {
  final String text;
  const Headline5(this.text, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}