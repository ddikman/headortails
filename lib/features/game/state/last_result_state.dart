import 'package:riverpod/riverpod.dart';

final lastResultProvider = StateNotifierProvider<LastResult, String?>((ref) {
  return LastResult();
});

class LastResult extends StateNotifier<String?> {
  LastResult(): super(null);

  void tails() {
    state = 'TAILS';
  }

  void heads() {
    state = "HEADS";
  }
}