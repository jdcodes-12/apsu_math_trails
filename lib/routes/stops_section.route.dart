import 'package:flutter/material.dart';
import 'package:math_trails/widgets/tabs/tab_headers/info_tab_header.widget.dart';
import 'package:math_trails/widgets/tabs/tab_headers/objective_tab_header.widget.dart';
import 'package:math_trails/widgets/tabs/tab_headers/wrap_up_tab_header.widget.dart';
import 'package:math_trails/widgets/tabs/tab_views/info_section_tab_view.widget.dart';
import 'package:math_trails/widgets/tabs/tab_views/objective_section_tab_view.widget.dart';
import 'package:math_trails/widgets/tabs/tab_views/wrap_up_section_tab_view.widget.dart';

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
              InfoSectionTabHeader(),
              ObjectiveSectionTabHeader(),
              WrapUpSectionTabHeader()
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            InfoSectionTabView(),
            ObjectiveSectionTabView(),
            WrapUpSectionTabView(),
          ],
        ),
      ),
    );
  }
}
