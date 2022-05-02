import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game/presentation/game_result_view.dart';
import 'package:headortails/features/game/state/did_win_state.dart';
import 'package:headortails/features/game/state/last_result_state.dart';

class GameStateView extends ConsumerWidget {
  const GameStateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final didWin = ref.watch(didWinProvider);
    final lastResult = ref.watch(lastResultProvider);
    if (didWin == null || lastResult == null) {
      return const Text('Tap either button below to start your game.');
    }

    return GameResultView(didWin: didWin, result: lastResult);
  }
}