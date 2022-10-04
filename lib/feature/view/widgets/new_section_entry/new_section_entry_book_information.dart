import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:flutter/material.dart';

/// Defines the layout for book information of the [NewSectionEntry].
class NewSectionEntryBookInformation extends StatelessWidget {
  final String title;
  final String author;
  final String releaseDate;

  const NewSectionEntryBookInformation({Key? key, required this.title, required this.author, required this.releaseDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "$title\n", style: Theme.of(context).textTheme.bodyText1),
              TextSpan(text: author, style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
        ),
        const SizedBox(height: ui_properties.paddingLarge),
        Row(
          children: <Widget>[
            SizedBox(
              height: ui_properties.iconSizeExtraSmall,
              child: ui_properties.getCalendarIcon(context),
            ),
            const SizedBox(width: ui_properties.paddingSmall),
            Text(releaseDate, style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ],
    );
  }
}
