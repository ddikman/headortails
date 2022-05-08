
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/services/local_storage.dart';
import 'package:headortails/app/state/local_storage_provider.dart';

final gameBalanceStateProvider = StateNotifierProvider<GameBalanceController, int>((ref) {
  final localStorage = ref.read(localStorageProvider);
  return GameBalanceController(localStorage);
});

class GameBalanceController extends StateNotifier<int> {
  static const _stateStorageKey = 'game_balance';
  static const _startingBalance = 10;

  final LocalStorage localStorage;

  GameBalanceController(this.localStorage) : super(localStorage.getInt(_stateStorageKey) ?? _startingBalance);

  bool get hasBalance => state > 0;

  void reduce() {
    state = state - 1;
    localStorage.setInt(_stateStorageKey, state);
  }

  Future<void> addGames(int games) async {
    state += games;
    localStorage.setInt(_stateStorageKey, state);
  }
}