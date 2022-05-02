
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gameBalanceStateProvider = StateNotifierProvider<GameBalanceStateNotifier, int>((ref) => GameBalanceStateNotifier(10));

class GameBalanceStateNotifier extends StateNotifier<int> {
  GameBalanceStateNotifier(int state) : super(state);

  void reduce() {
    state = state - 1;
  }

  void increase(int games) {
    state += games;
  }
}