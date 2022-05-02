import 'package:flutter/material.dart';
import 'app_routes.dart';

typedef RouteWidgetBuilder = Widget Function(BuildContext context, Object? args);

class AppRouter {

  final builders = <String, RouteWidgetBuilder>{};

  void registerRoute(String route, RouteWidgetBuilder builder) {
    builders[route] = builder;
  }

  String get initialRoute => AppRoutes.home;

  Route? onGenerateRoute(RouteSettings settings) {
    final builder = builders[settings.name];
    if (builder == null) return null;
    return MaterialPageRoute(builder: (ctx) => builder(ctx, settings.arguments));
  }
}