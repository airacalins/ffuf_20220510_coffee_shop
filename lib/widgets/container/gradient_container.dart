import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({ 
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: child
    );
  }
}