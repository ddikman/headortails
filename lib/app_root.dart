import 'package:flutter/material.dart';

import 'package:headortails/routing/app_router.dart';
import 'package:headortails/routing/app_routes.dart';

import 'features/about/presentation/about_screen.dart';
import 'features/game/presentation/game_screen.dart';
import 'features/home/presentation/home_screen.dart';
import 'features/statistics/presentation/statistics_screen.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  final router = AppRouter();

  @override
  void initState() {
    initialiseRoutes();
    super.initState();
  }

  void initialiseRoutes() {
    router.registerRoute(AppRoutes.home, (context, args) => const HomeScreen());
    router.registerRoute(AppRoutes.game, (context, args) => const GameScreen());
    router.registerRoute(AppRoutes.statistics, (context, args) => const StatisticsScreen());
    router.registerRoute(AppRoutes.about, (context, args) => const AboutScreen());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.onGenerateRoute,
      initialRoute: router.initialRoute
    );
  }
}