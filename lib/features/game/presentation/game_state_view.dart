import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game/presentation/game_result_view.dart';
import 'package:headortails/features/game/state/game_state_controller.dart';

class GameStateView extends ConsumerWidget {
  const GameStateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameStateProvider);
    if (gameState == null) {
      return const Text('Tap either button below to start your game.');
    }

    return GameResultView(didWin: gameState.won, result: gameState.lastFlip);
  }
}