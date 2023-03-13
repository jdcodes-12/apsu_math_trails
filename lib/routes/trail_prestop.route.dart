import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:math_trails/routes.dart';

class TrailPrestopRoute extends StatelessWidget {
  const TrailPrestopRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            log('Pressed back button on TrailPrestopRoute');
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
          const Text('TrailPrestopRoute'),
          ElevatedButton.icon(
            onPressed: () {
              log('Pressed button on TrailPrestopRoute...');
              Navigator.pushNamed(
                context,
                RouteGenerator.stopsListRoute,
              );
              log('Moving to Trail X\'s stop list');
            },
            icon: const Icon(Icons.forward),
            label: const Text("Go to stopsList"),
          )
        ],
      ),
    );
  }
}
