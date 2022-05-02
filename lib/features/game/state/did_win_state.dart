import 'package:riverpod/riverpod.dart';

final didWinProvider = StateNotifierProvider<DidWin, bool?>((ref) {
  return DidWin();
});

class DidWin extends StateNotifier<bool?> {
  DidWin(): super(null);

  void won() {
    state = true;
  }

  void lost() {
    state = false;
  }
}