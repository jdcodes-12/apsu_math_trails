import 'package:flutter/material.dart';
import 'package:math_trails/widgets/lists/trails_list.widget.dart';

// TODO: Fetch Trail data from firestore & load into ListView.builder()
class TrailsListRoute extends StatelessWidget {
  const TrailsListRoute({super.key});

  // TODO: Convert to Sliverapp bar
  // TODO: Create search bar
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Math Trails"),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const Text("Searchbar here"),
            const SizedBox(height: 24.0),
            const Text("Double tap a card to see more details!"),
            const SizedBox(height: 48.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TrailsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
