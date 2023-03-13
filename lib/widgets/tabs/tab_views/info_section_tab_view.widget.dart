import 'package:flutter/material.dart';

import 'package:math_trails/models/info_section.model.dart';

class InfoSectionTabView extends StatelessWidget {
  final InfoSection info;

  const InfoSectionTabView({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${info.stopId}\n\n${info.sectionHeader}\n\n${info.sectionBody}',
      ),
    );
  }
}
