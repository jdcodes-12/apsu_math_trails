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
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            log('Pressed back button on TrailPrestopRoute');
            Navigator.pop(context);
            log('Going back to previous route...');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          trail.trailNameFull,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Card(
                elevation: 16.0,
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    FittedBox(
                      child: Image.asset(
                        'assets/images/trails/trail_1/stop_1/trail-1-stop-1-info-pic.jpg',
                        height: 400.00,
                        width: 400.00,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    const Text('Visualizing the stack'),
                  ],
                ),
              ),
              const SizedBox(height: 64.0),
              SizedBox(
                height: 64.0,
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black87.withOpacity(0.8),
                    ),
                  ),
                  onPressed: () {
                    log('Pressed button on TrailPrestopRoute...');
                    Navigator.pushNamed(
                      context,
                      RouteGenerator.stopsListRoute,
                      arguments: trail.stops,
                    );
                    log('Moving to Trail X\'s stop list');
                  },
                  icon: const Icon(
                    Icons.route,
                  ),
                  label: const Text("Go to stopsList"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
