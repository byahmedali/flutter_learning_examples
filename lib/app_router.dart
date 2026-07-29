import 'package:flutter/material.dart';

import 'screens/learning_dashboard_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LearningDashboardScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const LearningDashboardScreen(),
        );
    }
  }
}
