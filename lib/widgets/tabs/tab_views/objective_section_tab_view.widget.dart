import 'package:flutter/material.dart';

import 'package:math_trails/models/objective_section.model.dart';

class ObjectiveSectionTabView extends StatelessWidget {
  final ObjectiveSection objective;

  const ObjectiveSectionTabView({super.key, required this.objective});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${objective.stopId}\n\n${objective.sectionHeader}\n\n${objective.questions.length}',
      ),
    );
  }
}
