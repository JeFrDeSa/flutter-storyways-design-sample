import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/view/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

/// Defines a simple button of the [BottomNavigation].
class BottomNavigationEntry extends StatelessWidget {
  /// The image for the button of the entry
  final Image buttonImage;

  const BottomNavigationEntry({Key? key, required this.buttonImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: SizedBox(
        height: ui_properties.iconSizeSmall,
        child: buttonImage,
      ),
      onPressed: () {},
    );
  }
}
