import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:math_trails/models/stop.model.dart';

import 'package:math_trails/routes.dart';

class StopsListRoutes extends StatelessWidget {
  final List<Stop> stops;

  const StopsListRoutes({super.key, required this.stops});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            log('Pressed back button on StopsListRoute');
            Navigator.pop(context);
            log('Going back to previous route...');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            '# Stops passed ${stops.length}\nStop 1 is: ${stops[0].stopId}',
          ),
          ElevatedButton.icon(
            onPressed: () {
              log('Pressed button on StopsListRoute...');
              Navigator.pushNamed(
                context,
                RouteGenerator.stopSectionsRoute,
                arguments: stops[0],
              );
              log('Moving to Stop X\'s sections');
            },
            icon: const Icon(Icons.forward),
            label: const Text("View sections"),
          ),
        ],
      ),
    );
  }
}
