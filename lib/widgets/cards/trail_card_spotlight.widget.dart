import 'package:flutter/material.dart';

class TrailSpotlightCard extends StatelessWidget {
  const TrailSpotlightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
