import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/controller/book_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Defines the [TextField] for book searches of the [BookSearchPage].
class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SearchBarState();
}

class SearchBarState extends ConsumerState<SearchBar> {
  String inputValue = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: ui_properties.searchBarElevation,
      shadowColor: ui_properties.searchBarShadowColor,
      child: Container(
        padding: const EdgeInsets.only(
          left: ui_properties.paddingExtraLarge,
          top: ui_properties.paddingMedium,
          right: ui_properties.paddingExtraLarge,
          bottom: ui_properties.paddingSmall,
        ),
        child: TextField(
          maxLines: 1,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: SizedBox(
                  height: ui_properties.iconSizeExtraSmall,
                  child: ui_properties.searchIcon,
                ),
                onPressed: () {
                  ref.read(searchProvider.state).update((state) => inputValue);
                },
              ),
              hintText: 'Search for Something',
              border: InputBorder.none),
          onChanged: (value) {
            inputValue = value;
            ref.read(searchProvider.state).update((state) => inputValue);
          },
        ),
      ),
    );
  }
}
