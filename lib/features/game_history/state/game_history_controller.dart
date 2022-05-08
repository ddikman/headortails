import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/services/local_storage.dart';
import 'package:headortails/app/state/local_storage_provider.dart';
import 'package:headortails/features/game_history/models/game_history.dart';

final gameHistoryProvider = StateNotifierProvider<GameHistoryController, GameHistory>((ref) {
  final localStorage = ref.read(localStorageProvider);
  return GameHistoryController(localStorage: localStorage);
});

class GameHistoryController extends StateNotifier<GameHistory> {
  static const storageKey = 'game_history';
  final LocalStorage localStorage;

  GameHistoryController({required this.localStorage}) : super(_readState(localStorage));

  void logPlay({required bool isWin, required bool isHeads}) {
    state = state.copyWith(
      heads: state.heads + (isHeads ? 1 : 0),
      tails: state.tails + (isHeads ? 0 : 1),
      wins: state.wins + (isWin ? 1 : 0),
      losses: state.losses + (isWin ? 0 : 1),
    );
    _saveState();
  }

  void _saveState() {
    localStorage.setJson(storageKey, state.toJson());
  }

  static GameHistory _readState(LocalStorage localStorage) {
    final json = localStorage.getJson(storageKey);
    if (json != null) {
      return GameHistory.fromJson(json);
    }

    return const GameHistory();
  }
}