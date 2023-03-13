import 'package:flutter/material.dart';

import 'package:math_trails/models/wrap_up_section.model.dart';

class WrapUpSectionTabView extends StatelessWidget {
  final WrapUpSection wrapUp;

  const WrapUpSectionTabView({super.key, required this.wrapUp});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${wrapUp.stopId}\n\n${wrapUp.sectionHeader}\n\n${wrapUp.sectionBody}',
      ),
    );
  }
}
