import 'package:flutter/material.dart';

// TODO: Implement Tabbar
class StopSectionsRoute extends StatelessWidget {
  const StopSectionsRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.abc),
              ),
              Tab(
                child: Icon(Icons.ac_unit),
              ),
              Tab(
                child: Icon(Icons.info_outline),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Content - Tab 1'),
            ),
            Center(
              child: Text('Content - Tab 2'),
            ),
            Center(
              child: Text('Content - Tab 3'),
            ),
          ],
        ),
      ),
    );
  }
}
