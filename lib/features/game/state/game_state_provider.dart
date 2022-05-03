import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game_state.dart';

final gameStateProvider = StateNotifierProvider<GameStateNotifier, GameState?>((ref) => GameStateNotifier());

class GameStateNotifier extends StateNotifier<GameState?> {
  GameStateNotifier() : super(null);

  void won(String side) {
    state = GameState(won: true, lastFlip: side);
  }

  void lost(String side) {
    state = GameState(won: false, lastFlip: side);
  }
}