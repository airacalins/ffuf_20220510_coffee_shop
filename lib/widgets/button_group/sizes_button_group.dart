import 'package:flutter/material.dart';

class SizesButtonGroup extends StatelessWidget {
  const SizesButtonGroup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(5),
            child: OutlinedButton(
              child: const Text('S'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          )
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(5),
            child: OutlinedButton(
              child: const Text('M'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          )
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(5),
            child: OutlinedButton(
              child: const Text('L'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          )
        ),
        
      ],
    );
  }
}