import 'package:flutter/material.dart';
import 'package:headortails/app/presentation/constants/theme_margins.dart';
import 'package:headortails/app/presentation/widgets/app_scaffold.dart';
import 'package:headortails/app/routing/app_routes.dart';
import 'package:headortails/features/statistics/presentation/statistics_card.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        title: 'Statistics',
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: const [
                StatisticsCard(title: 'Games played', value: '4'),
                StatisticsCard(title: 'Games bought', value: '0'),
                StatisticsCard(title: 'Heads', value: '3'),
                StatisticsCard(title: 'Tails', value: '1')
              ],
            ),
            const SizedBox(height: ThemeMargins.pageItemPadding),
            ElevatedButton(onPressed: () => Navigator.of(context).pushNamed(AppRoutes.game), child: const Text('Play a game'))
          ],
        ));
  }
}
