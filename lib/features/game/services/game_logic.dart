import 'dart:math';

import 'package:headortails/features/game/state/did_win_state.dart';
import 'package:headortails/features/game/state/last_result_state.dart';

class GameLogic {
  final _random = Random();

  final DidWin didWin;
  final LastResult lastResult;

  CoinSides? choice;
  CoinSides? result;

  GameLogic({required this.didWin, required this.lastResult});

  void betTails() {
    choice = CoinSides.tails;
    _flip();
  }
  void betHeads() {
    choice = CoinSides.tails;
    _flip();
  }

  void _flip() {
    if (_random.nextBool()) {
      lastResult.heads();
      result = CoinSides.heads;
    } else {
      lastResult.tails();
      result = CoinSides.tails;
    }

    if (result == choice) {
      didWin.won();
    } else {
      didWin.lost();
    }
  }
}

enum CoinSides {
  heads,
  tails
}