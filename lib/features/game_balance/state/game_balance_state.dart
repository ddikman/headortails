
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/services/local_storage.dart';
import 'package:headortails/app/state/local_storage_provider.dart';

final gameBalanceStateProvider = StateNotifierProvider<GameBalanceStateNotifier, int>((ref) {
  final localStorage = ref.read(localStorageProvider);
  return GameBalanceStateNotifier(localStorage);
});

class GameBalanceStateNotifier extends StateNotifier<int> {
  static const _stateStorageKey = 'game_balance';
  static const _startingBalance = 10;

  final LocalStorage localStorage;

  GameBalanceStateNotifier(this.localStorage) : super(localStorage.getInt(_stateStorageKey) ?? _startingBalance);

  void reduce() {
    state = state - 1;
    localStorage.setInt(_stateStorageKey, state);
  }

  void increase(int games) {
    state += games;
    localStorage.setInt(_stateStorageKey, state);
  }
}