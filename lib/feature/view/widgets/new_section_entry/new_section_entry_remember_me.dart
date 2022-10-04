import 'package:flutter/material.dart';
import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;

/// Defines the 'rememberMe' button of the [NewSectionEntry].
class NewSectionEntryRememberMeButton extends StatelessWidget {

  const NewSectionEntryRememberMeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: ui_properties.paddingLarge),
      child: SizedBox(
        height: ui_properties.newSectionEntryRememberMeButtonSize,
        width: ui_properties.newSectionEntryRememberMeButtonSize,
        child: OutlinedButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: ui_properties.defaultWidgetBoarderRadius,
            ),
          ),
          onPressed: () {},
          child: ui_properties.rememberMeIcon,
        ),
      ),
    );
  }
}