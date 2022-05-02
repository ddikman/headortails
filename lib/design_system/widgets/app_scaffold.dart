import 'package:flutter/material.dart';
import 'package:headortails/design_system/constants/theme_margins.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final String title;

  const AppScaffold({Key? key, required this.title, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Padding(
          padding: const EdgeInsets.all(ThemeMargins.screen),
          child: child,
        )
    );
  }
}