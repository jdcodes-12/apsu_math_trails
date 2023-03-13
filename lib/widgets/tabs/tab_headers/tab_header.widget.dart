import 'package:flutter/material.dart';

class TabHeader extends StatelessWidget {
  final String? text;
  final Widget? child;
  final Widget? icon;

  const TabHeader({super.key, this.icon, this.child, this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: text,
      icon: icon,
      child: child,
    );
  }
}
