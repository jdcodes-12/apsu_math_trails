import 'package:flutter/material.dart';
import 'package:math_trails/widgets/tabs/tab_headers/tab_header.widget.dart';

class ObjectiveSectionTabHeader extends StatelessWidget {
  const ObjectiveSectionTabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabHeader(
      icon: Icon(Icons.data_object),
      text: "Objective",
    );
  }
}
