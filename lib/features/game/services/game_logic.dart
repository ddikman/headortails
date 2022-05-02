import 'dart:math';

class GameLogic {
  final _random = Random();

  // add dependency for game history
  // add dependency for game balance
  // add dependency for game state

  CoinSides? choice;
  CoinSides? result;

  void betTails() {
    choice = CoinSides.tails;
    _flip();
  }
  void betHeads() {
    choice = CoinSides.tails;
    _flip();
  }

  void _flip() {
    result = _random.nextBool() ? CoinSides.tails : CoinSides.heads;
    // set state
  }
}

enum CoinSides {
  heads,
  tails
}