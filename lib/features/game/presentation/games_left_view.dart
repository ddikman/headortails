import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game_balance/state/game_balance_controller.dart';

class GamesLeftView extends ConsumerWidget {
  const GamesLeftView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gamesLeft = ref.watch(gameBalanceStateProvider);
    return Text("Games left: $gamesLeft");
  }
}