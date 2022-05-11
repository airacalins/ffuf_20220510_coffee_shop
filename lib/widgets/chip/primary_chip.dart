import 'package:flutter/material.dart';

class PrimaryChip extends StatelessWidget {
  final String title; 
  const PrimaryChip(this.title, { Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title,
        style: Theme.of(context).textTheme.headline6
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}