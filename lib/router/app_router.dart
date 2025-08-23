
import 'package:flutter/material.dart';
import 'package:location_track/screens/point_list_screen.dart';

import '../screens/add_point_screen.dart';

class AppRouter {
  static const String pointListRoute = 'point_list';
  static const String addPointRoute = 'add_point';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case pointListRoute:
        return MaterialPageRoute(builder: (_) => const PointListScreen());
        case addPointRoute:
          return MaterialPageRoute(builder: (_) => const AddPointScreen());
      default:
        throw Exception('Page not found');
    }
  }
}