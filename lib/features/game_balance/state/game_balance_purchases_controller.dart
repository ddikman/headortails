import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/services/local_storage.dart';
import 'package:headortails/app/state/local_storage_provider.dart';
import 'package:headortails/features/game_balance/state/game_balance_controller.dart';

final gameBalancePurchaseProvider = StateNotifierProvider<GameBalancePurchasesController, AsyncValue<int>>((ref) {
  final localStorage = ref.read(localStorageProvider);
  return GameBalancePurchasesController(localStorage: localStorage, ref: ref);
});

class GameBalancePurchasesController extends StateNotifier<AsyncValue<int>> {
  static const _storageKey = "game_balance_purchases";
  final LocalStorage localStorage;
  final Ref ref;

  GameBalancePurchasesController({required this.localStorage, required this.ref}) : super(AsyncValue.data(_readPurchases(localStorage)));

  Future<void> purchaseGames(int games) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    final purchases = (state.value ?? 0) + games;
    state = AsyncValue.data(purchases);
    ref.read(gameBalanceStateProvider.notifier).addGames(games);
    _savePurchases(purchases);
  }

  void _savePurchases(int purchases) {
    localStorage.setInt(_storageKey, purchases);
  }

  static int _readPurchases(LocalStorage localStorage) {
    return localStorage.getInt(_storageKey) ?? 0;
  }
}