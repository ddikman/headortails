import 'package:flutter/material.dart';

class GameButtonsView extends StatelessWidget {
  const GameButtonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Bet on tails')),
        ElevatedButton(onPressed: () {}, child: const Text('Bet on heads'))
      ],
    );
  }
}