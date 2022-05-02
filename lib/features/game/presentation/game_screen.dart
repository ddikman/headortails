import 'package:flutter/material.dart';
import 'package:headortails/design_system/constants/theme_margins.dart';
import 'package:headortails/design_system/widgets/app_scaffold.dart';

import 'game_buttons_view.dart';
import 'game_state_view.dart';
import 'games_left_view.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: "Head or Tails?",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            GameStateView(),
            SizedBox(height: ThemeMargins.pageItemPadding),
            GameButtonsView(),
            SizedBox(height: ThemeMargins.pageItemPadding),
            GamesLeftView()
          ],
        ),
    );
  }
}