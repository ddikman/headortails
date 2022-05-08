
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/services/local_storage.dart';
import 'package:headortails/app/state/local_storage_provider.dart';

final gameBalanceStateProvider = StateNotifierProvider<GameBalanceState, int>((ref) {
  final localStorage = ref.read(localStorageProvider);
  return GameBalanceState(localStorage);
});

class GameBalanceState extends StateNotifier<int> {
  static const _stateStorageKey = 'game_balance';
  static const _startingBalance = 10;

  final LocalStorage localStorage;

  GameBalanceState(this.localStorage) : super(localStorage.getInt(_stateStorageKey) ?? _startingBalance);

  bool get hasBalance => state > 0;

  void reduce() {
    state = state - 1;
    localStorage.setInt(_stateStorageKey, state);
  }

  Future<void> increase(int games) async {
    await Future.delayed(const Duration(seconds: 2));
    state += games;
    localStorage.setInt(_stateStorageKey, state);
  }
}