import 'package:flutter/material.dart';

class Headline4 extends StatelessWidget {
  final String text;
  const Headline4(this.text, { Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}