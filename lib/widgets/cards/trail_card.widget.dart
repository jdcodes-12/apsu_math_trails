import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:math_trails/routes.dart';

class TrailCard extends StatelessWidget {
  const TrailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: () {
        log('pressed');
        Navigator.pushNamed(context, RouteGenerator.trailPrestopRoute,
            arguments: {
              "trail_id": 1,
              "trail_name": "Trail 1 - Name",
            });
        log('Moving to TrailPrestopRoute...');
      },
      child: Card(
        child: Column(
          children: const [
            Text(
              "Trail X",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
