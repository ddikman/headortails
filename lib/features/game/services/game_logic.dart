import 'dart:math';

import 'package:headortails/features/game/state/game_state_provider.dart';
import 'package:headortails/features/game_balance/state/game_balance_state.dart';

class GameLogic {
  final _random = Random();

  final GameStateNotifier gameState;
  final GameBalanceState gameBalanceState;

  CoinSides? choice;
  CoinSides? result;

  GameLogic({required this.gameState, required this.gameBalanceState});

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
    final resultString = result == CoinSides.heads ? 'HEADS' : 'TAILS';
    if (result == choice) {
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