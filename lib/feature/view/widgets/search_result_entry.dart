import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Defines an entry of the drop down list of search results.
class SearchResultEntry extends ConsumerWidget {
  final AssetImage backgroundImage;
  final String title;
  final String author;
  final int listIndex;

  const SearchResultEntry({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.author,
    required this.listIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  width: ui_properties.leadingSearchResultEntryImageWidth,
                  height: ui_properties.leadingSearchResultEntryImageHeight,
                  padding: const EdgeInsets.only(
                    left: ui_properties.paddingLarge,
                    top: ui_properties.paddingMedium,
                    bottom: ui_properties.paddingMedium,
                  ),
                  child: Container(
                    key: constants.determineListEntryKey(key: constants.searchResultEntryImageKey, index: listIndex),
                    decoration: BoxDecoration(
                      borderRadius: ui_properties.defaultWidgetBoarderRadius,
                      image: DecorationImage(image: backgroundImage, fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(width: ui_properties.paddingLarge),
                Column(
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
