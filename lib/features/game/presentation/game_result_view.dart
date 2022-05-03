import 'package:flutter/cupertino.dart';
import 'package:headortails/app/presentation/constants/theme_colors.dart';
import 'package:headortails/app/presentation/constants/theme_typography.dart';

class GameResultView extends StatelessWidget {
  final String result;
  final bool didWin;

  const GameResultView({Key? key, required this.result, required this.didWin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = didWin ? 'Yeah, you got it right!' : 'Shame, you lost!';
    return Column(
      children: [
        _CoinGraphic(text: result),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Text(text),
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