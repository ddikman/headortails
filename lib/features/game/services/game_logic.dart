import 'dart:math';

import 'package:headortails/features/game/state/game_state_controller.dart';
import 'package:headortails/features/game_balance/state/game_balance_controller.dart';
import 'package:headortails/features/game_history/state/game_history_controller.dart';

class GameLogic {
  final _random = Random();

  final GameStateController gameState;
  final GameBalanceController gameBalanceState;
  final GameHistoryController gameHistory;

  CoinSides? choice;
  CoinSides? result;

  GameLogic({required this.gameState, required this.gameBalanceState, required this.gameHistory});

  void betTails() {
    choice = CoinSides.tails;
    _flip();
  }
  void betHeads() {
    choice = CoinSides.tails;
    _flip();
  }

  void _flip() {
    gameBalanceState.reduce();
    result = _random.nextBool() ? CoinSides.heads : CoinSides.tails;
    final isWin = result == choice;
    final resultString = result == CoinSides.heads ? 'HEADS' : 'TAILS';
    gameHistory.logPlay(isWin: isWin, isHeads: result == CoinSides.heads);
    if (isWin) {
      gameState.won(resultString);
    } else {
      gameState.lost(resultString);
    }
  }
}

enum CoinSides {
  heads,
  tails
}