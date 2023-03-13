import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:math_trails/routes.dart';

class StopsListRoutes extends StatelessWidget {
  const StopsListRoutes({super.key});

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
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        children: [
          const Text('StopsList'),
          ElevatedButton.icon(
            onPressed: () {
              log('Pressed button on StopsListRoute...');
              Navigator.pushNamed(
                context,
                RouteGenerator.stopSectionsRoute,
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
