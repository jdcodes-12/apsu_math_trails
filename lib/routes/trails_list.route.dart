import 'package:flutter/material.dart';
import 'package:math_trails/models/trail.model.dart';
import 'package:math_trails/utils/firebase/firestore/firestore.service.dart';

class TrailsListRoute extends StatelessWidget {
  const TrailsListRoute({super.key});

  // TODO: fetch trails from Firestore
  List<Trail> fetchTrailsOnStartup() {
    // Read Trails collection for each Trail
    // store in a List
    // return list
    return <Trail>[];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(), // Implement ListView.builder here
      ),
    );
  }
}
