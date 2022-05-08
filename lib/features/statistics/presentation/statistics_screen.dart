import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/presentation/constants/theme_margins.dart';
import 'package:headortails/app/presentation/widgets/app_scaffold.dart';
import 'package:headortails/app/routing/app_routes.dart';
import 'package:headortails/features/game_balance/state/game_balance_purchases_controller.dart';
import 'package:headortails/features/game_history/state/game_history_controller.dart';
import 'package:headortails/features/statistics/presentation/statistics_card.dart';

class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameHistory = ref.watch(gameHistoryProvider);
    final gamePurchases = ref.watch(gameBalancePurchaseProvider);
    return AppScaffold(
        title: 'Statistics',
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  StatisticsCard(title: 'Games played', value: "${gameHistory.gamesPlayed}"),
                  StatisticsCard(title: 'Games bought', value: "$gamePurchases"),
                  StatisticsCard(title: 'Heads', value: "${gameHistory.heads}"),
                  StatisticsCard(title: 'Tails', value: "${gameHistory.tails}"),
                  StatisticsCard(title: 'Wins', value: "${gameHistory.wins}"),
                  StatisticsCard(title: 'Losses', value: "${gameHistory.losses}")
                ],
              ),
              const SizedBox(height: ThemeMargins.pageItemPadding),
              ElevatedButton(onPressed: () => Navigator.of(context).pushNamed(AppRoutes.game), child: const Text('Play a game'))
            ],
          ),
        ));
  }
}
