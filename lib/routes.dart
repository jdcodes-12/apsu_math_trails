import 'package:flutter/material.dart';
import 'package:math_trails/models/stop.model.dart';

import 'package:math_trails/models/trail.model.dart';

import 'package:math_trails/routes/stops_section.route.dart';
import 'package:math_trails/routes/stops_list.route.dart';
import 'package:math_trails/routes/trail_prestop.route.dart';
import 'package:math_trails/routes/trails_list.route.dart';

class RouteGenerator {
  static const homeRoute = '/';
  static const trailPrestopRoute = '/trail-prestop';
  static const stopsListRoute = '/stops-list';
  static const stopSectionsRoute = '/stop-sections';

  RouteGenerator._();

// TODO: Pass the args here
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const TrailsListRoute(),
        );

      // TODO: Implement this to only take a Trail. Do conversions of Trail list in home route, only once.
      case trailPrestopRoute:
        final trailJson = settings.arguments as Map<String, dynamic>;
        final trail = Trail.fromJson(trailJson);

        return MaterialPageRoute(
          builder: (_) => TrailPrestopRoute(
            trail: trail,
          ),
        );

      case stopsListRoute:
        final stops = settings.arguments as List<Stop>;

        return MaterialPageRoute(
          builder: (_) => StopsListRoutes(stops: stops),
        );

      case stopSectionsRoute:
        final stop = settings.arguments as Stop;

        return MaterialPageRoute(
          builder: (_) => StopSectionsRoute(stop: stop),
        );

      default:
        throw const FormatException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
