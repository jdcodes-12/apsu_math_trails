import 'package:flutter/material.dart';
import 'package:math_trails/routes/StopSectionsRoute.route.dart';
import 'package:math_trails/routes/StopsListRoute.route.dart';
import 'package:math_trails/routes/TrailPrestopRoute.route.dart';
import 'package:math_trails/routes/TrailsListRoute.route.dart';

class RouteGenerator {
  static const homeRoute = '/';
  static const trailPrestopRoute = '/trail-prestop';
  static const stopsListRoute = '/stops-list';
  static const stopSectionsRoute = '/stop-sections';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => TrailsListRoute(),
        );

      case trailPrestopRoute:
        return MaterialPageRoute(
          builder: (_) => TrailPrestopRoute(),
        );

      case stopsListRoute:
        return MaterialPageRoute(
          builder: (_) => StopsListRoutes(),
        );

      case stopSectionsRoute:
        return MaterialPageRoute(
          builder: (_) => StopSectionsRoute(),
        );

      default:
        throw FormatException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
