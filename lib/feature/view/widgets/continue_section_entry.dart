import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/feature/view/widgets/continue_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Defines an entry of the [ContinueSection].
class ContinueSectionEntry extends ConsumerWidget {
  final AssetImage backgroundImage;
  final String title;
  final String author;
  final int listIndex;

  const ContinueSectionEntry({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.author,
    required this.listIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              key: constants.determineListEntryKey(key: constants.continueSectionEntryImageKey, index: listIndex),
              height: ui_properties.continueSectionCoverImageSize,
              width: ui_properties.continueSectionCoverImageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            MaterialButton(
              height: ui_properties.continueSectionButtonSize,
              minWidth: ui_properties.continueSectionButtonSize,
              color: Theme.of(context).primaryColor,
              shape: const CircleBorder(),
              onPressed: () {},
              child: SizedBox(
                height: ui_properties.iconSizeSmall,
                child: ui_properties.playIcon,
              ),
            ),
          ],
        ),
        const SizedBox(height: ui_properties.paddingMedium),
        Text(title, style: Theme.of(context).textTheme.bodyText1),
        Text(author, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}
