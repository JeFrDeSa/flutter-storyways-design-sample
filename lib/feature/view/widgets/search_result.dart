import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/controller/book_search.dart';
import 'package:design_sample/feature/model/book.dart';
import 'package:design_sample/feature/view/widgets/search_result_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Defines the drop down list of search results.
class SearchResult extends ConsumerStatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SearchResultState();
}

class SearchResultState extends ConsumerState<SearchResult> {
  List<Book> searchResult = [];

  @override
  Widget build(BuildContext context) {
    final dataList = ref.watch(searchResultProvider);

    if (dataList.asData != null) {
      searchResult = dataList.asData!.value;
    }

    return Material(
      elevation: ui_properties.defaultElevation,
      shadowColor: ui_properties.searchResultShadowColor,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        shrinkWrap: true,
        itemCount: searchResult.length,
        itemBuilder: (context, index) {
          return SearchResultEntry(
            key: constants.determineListEntryKey(key: constants.searchResultEntryKey, index: index),
            backgroundImage: AssetImage(searchResult[index].coverImagePath),
            title: searchResult[index].title,
            author: searchResult[index].author,
            listIndex: index
          );
        },
      ),
    );
  }
}
