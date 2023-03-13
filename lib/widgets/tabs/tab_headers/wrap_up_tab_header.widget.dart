import 'package:flutter/material.dart';
import 'package:math_trails/widgets/tabs/tab_headers/tab_header.widget.dart';

class WrapUpSectionTabHeader extends StatelessWidget {
  const WrapUpSectionTabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabHeader(
      icon: Icon(Icons.done),
      text: "Wrap Up",
    );
  }
}
