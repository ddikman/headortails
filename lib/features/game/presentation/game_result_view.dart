import 'package:flutter/cupertino.dart';
import 'package:headortails/design_system/constants/theme_colors.dart';
import 'package:headortails/design_system/constants/theme_typography.dart';

class GameResultView extends StatelessWidget {
  const GameResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _CoinGraphic(text: 'TAILS'),
        Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text('Alas, you lost!'),
        )
      ],
    );
  }
}

class _CoinGraphic extends StatelessWidget {
  final String text;

  const _CoinGraphic({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const coinSize = 128.0;
    return Container(
      height: coinSize,
      width: coinSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(coinSize / 2.0),
        color: ThemeColors.primary,
        boxShadow: const [BoxShadow(
          color: ThemeColors.primaryDark,
          spreadRadius: 0.0,
          blurRadius: 0.0,
          offset: Offset(0.0, 9.0)
        )]
      ),
      child: Center(child: Text(text, style: ThemeTypography.largeText.copyWith(color: ThemeColors.text))),
    );
  }
}