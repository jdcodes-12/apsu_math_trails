import 'package:flutter/material.dart';
import 'package:math_trails/widgets/cards/trail_card.widget.dart';

class TrailsList extends StatelessWidget {
  const TrailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TrailCard(),
        TrailCard(),
        TrailCard(),
        TrailCard(),
        TrailCard(),
        TrailCard(),
        TrailCard(),
        TrailCard(),
      ],
    );
  }
}
