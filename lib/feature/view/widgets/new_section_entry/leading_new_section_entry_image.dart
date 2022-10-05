import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:flutter/material.dart';

/// Defines the leading book cover image of the [NewSectionEntry].
class LeadingNewSectionEntryImage extends StatelessWidget {
  final AssetImage backgroundImage;
  final int listIndex;

  const LeadingNewSectionEntryImage({Key? key, required this.backgroundImage, required this.listIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ui_properties.leadingNewSectionEntryImageWidth,
      height: ui_properties.leadingNewSectionEntryImageHeight,
      padding: const EdgeInsets.only(
        top: ui_properties.paddingMedium,
        left: ui_properties.paddingLarge,
        bottom: ui_properties.paddingMedium,
      ),
      child: Container(
        key: constants.determineListEntryKey(key: constants.newSectionEntryImageKey, index: listIndex),
        decoration: BoxDecoration(
          borderRadius: ui_properties.defaultWidgetBoarderRadius,
          image: DecorationImage(image: backgroundImage, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
