import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:math_trails/routes.dart';

import 'package:math_trails/models/trail.model.dart';

class TrailPrestopRoute extends StatelessWidget {
  final Trail trail;

  const TrailPrestopRoute({super.key, required this.trail});

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
            color: Colors.white,
          ),
        ),
        title: Text(
          trail.trailNameFull,
        ),
      ),
      body: Column(
        children: [
          Text(
            '$trail',
          ),
          ElevatedButton.icon(
            onPressed: () {
              log('Pressed button on TrailPrestopRoute...');
              Navigator.pushNamed(
                context,
                RouteGenerator.stopsListRoute,
                arguments: trail.stops,
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
