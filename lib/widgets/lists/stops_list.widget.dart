import 'package:flutter/material.dart';

class StopsList extends StatelessWidget {
  final String msg;

  const StopsList({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(msg),
    );
  }
}
