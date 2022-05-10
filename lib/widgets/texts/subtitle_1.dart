import 'package:flutter/material.dart';

class Subtitle1 extends StatelessWidget {
  final String title;
  const Subtitle1(this.title, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}