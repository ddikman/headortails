import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  final String route;
  final String title;

  const HomeScreenButton({Key? key, required this.route, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed(route),
        child: Text(title));
  }
}
