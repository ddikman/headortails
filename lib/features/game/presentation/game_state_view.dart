import 'package:flutter/cupertino.dart';
import 'package:headortails/features/game/presentation/game_result_view.dart';

class GameStateView extends StatelessWidget {
  const GameStateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Text('Tap either button below to start your game.');
    return const GameResultView();
  }
}