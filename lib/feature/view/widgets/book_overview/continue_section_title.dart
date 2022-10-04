import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:flutter/material.dart';

class ContinueSectionTitle extends StatelessWidget {
  const ContinueSectionTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: ui_properties.paddingLarge,
        top: ui_properties.paddingExtraLarge,
        bottom: ui_properties.paddingExtraLarge,
      ),
      child: Text(constants.continueSectionName, style: Theme.of(context).textTheme.bodyText2),
    );
  }
}
