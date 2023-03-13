import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:math_trails/routes.dart';

// TODO: Fetch Trail data from firestore & load into ListView.builder()
class TrailsListRoute extends StatelessWidget {
  const TrailsListRoute({super.key});

  // TODO: Convert to Sliverapp bar
  // TODO: Create search bar
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Math Trails"),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black45,
        ),
        body: Column(
          children: [
            const Text("Searchbar here"),
            const SizedBox(height: 24.0),
            const Text("Double tap a card to see more details!"),
            const SizedBox(height: 48.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView(
                  children: [
                    InkWell(
                      onDoubleTap: () {
                        log('pressed');
                        Navigator.pushNamed(
                            context, RouteGenerator.trailPrestopRoute,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
