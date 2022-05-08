import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game_state.dart';

final gameStateProvider = StateNotifierProvider<GameStateController, GameState?>((ref) => GameStateController());

class GameStateController extends StateNotifier<GameState?> {
  GameStateController() : super(null);

  void won(String side) {
    state = GameState(won: true, lastFlip: side);
  }

  void lost(String side) {
    state = GameState(won: false, lastFlip: side);
  }
}