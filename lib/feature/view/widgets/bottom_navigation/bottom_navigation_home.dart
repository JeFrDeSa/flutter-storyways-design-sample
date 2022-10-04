import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/view/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

/// Defines the home button of the [BottomNavigation].
class BottomNavigationHome extends StatelessWidget {
  const BottomNavigationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: SizedBox(
        height: ui_properties.iconSizeSmall,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ui_properties.homeIcon,
            const SizedBox(width: ui_properties.paddingMedium),
            Text("Home", style: Theme.of(context).textTheme.button),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
