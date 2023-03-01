library app_routes;

import 'package:chatgpt/Splash/View/splash_activity.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const SplashActivity(),
        );
      default:
        return throw Exception();
    }
  }

  static void dispose() {}
}
