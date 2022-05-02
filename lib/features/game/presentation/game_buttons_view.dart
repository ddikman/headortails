import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game/services/game_logic.dart';
import 'package:headortails/features/game/state/game_state.dart';
import 'package:headortails/features/game_balance/state/game_balance_state.dart';

class GameButtonsView extends ConsumerWidget {

  const GameButtonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameLogic = GameLogic(
      gameState: ref.read(gameStateProvider.notifier),
      gameBalanceState: ref.read(gameBalanceStateProvider.notifier)
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () => gameLogic.betTails(), child: const Text('Bet on tails')),
        ElevatedButton(onPressed: () => gameLogic.betHeads(), child: const Text('Bet on heads'))
      ],
    );
  }
}