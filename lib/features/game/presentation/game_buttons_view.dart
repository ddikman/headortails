import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game/services/game_logic.dart';
import 'package:headortails/features/game/state/game_state_controller.dart';
import 'package:headortails/features/game_balance/presentation/purchase_dialogue.dart';
import 'package:headortails/features/game_balance/state/game_balance_controller.dart';
import 'package:headortails/features/game_history/state/game_history_controller.dart';

class GameButtonsView extends ConsumerWidget {

  const GameButtonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameBalance = ref.read(gameBalanceStateProvider.notifier);
    final gameLogic = GameLogic(
      gameState: ref.read(gameStateProvider.notifier),
      gameHistory: ref.read(gameHistoryProvider.notifier),
      gameBalanceState: gameBalance
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () => tryBet(context, gameBalance, gameLogic.betTails), child: const Text('Bet on tails')),
        ElevatedButton(onPressed: () => tryBet(context, gameBalance, gameLogic.betHeads), child: const Text('Bet on heads'))
      ],
    );
  }

  void tryBet(BuildContext context, GameBalanceController gameBalance, Function betFunction) {
    if (gameBalance.hasBalance) {
      betFunction();
    } else {
      promptForPurchase(context);
    }
  }

  void promptForPurchase(BuildContext context) {
    PurchaseDialogue.show(context);
  }
}