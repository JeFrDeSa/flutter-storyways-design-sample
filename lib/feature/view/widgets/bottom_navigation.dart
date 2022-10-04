import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/view/widgets/bottom_navigation/bottom_navigation_entry.dart';
import 'package:design_sample/feature/view/widgets/bottom_navigation/bottom_navigation_home.dart';
import 'package:flutter/material.dart';

/// Defines the layout of the widgets for the navigation at the bottom screen.
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ui_properties.bottomNavigationBarHeight,
      child: Row(
        children: <Widget>[
          const Expanded(
            flex: 2,
            child: BottomNavigationHome(),
          ),
          Expanded(
            child: BottomNavigationEntry(buttonImage: ui_properties.multiIcon),
          ),
          Expanded(
            child: BottomNavigationEntry(buttonImage: ui_properties.compassIcon),
          ),
          Expanded(
            child: BottomNavigationEntry(buttonImage: ui_properties.notesIcon),
          ),
        ],
      ),
    );
  }
}
