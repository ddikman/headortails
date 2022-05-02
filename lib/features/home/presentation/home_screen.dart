import 'package:flutter/material.dart';
import 'package:headortails/features/home/presentation/home_screen_button.dart';
import 'package:headortails/routing/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RiverPod Example')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 64.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HomeScreenButton(route: AppRoutes.game, title: 'Play'),
            HomeScreenButton(route: AppRoutes.statistics, title: 'Statistics'),
            HomeScreenButton(route: AppRoutes.about, title: 'About')
          ],
        ),
      ),
    );
  }
}