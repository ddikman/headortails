import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headortails/design_system/constants/theme_margins.dart';

class StatisticsCard extends StatelessWidget {
  final String title;
  final String value;

  const StatisticsCard({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          const SizedBox(height: ThemeMargins.pageItemPadding),
          Text(value, style: const TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }
}