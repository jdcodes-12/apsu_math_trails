import 'package:flutter/material.dart';

// TODO: Implement routing to Trail X's TrailCardSpotlight
//    - Takes a Trail

class TrailCard extends StatelessWidget {
  const TrailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Card(elevation: 16.0, child: Column()),
    );
  }
}
