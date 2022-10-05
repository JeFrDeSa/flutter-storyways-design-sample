import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/controller/book_search.dart';
import 'package:design_sample/feature/model/book.dart';
import 'package:design_sample/feature/view/widgets/continue_section_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Defines the list for the continue section books.
class ContinueSection extends ConsumerStatefulWidget {
  const ContinueSection({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ContinueSectionState();
}

class ContinueSectionState extends ConsumerState<ContinueSection> {
  List<Book> bookList = [];

  @override
  Widget build(BuildContext context) {
    final dataList = ref.watch(continueSectionProvider);

    if (dataList.asData != null) {
      bookList = dataList.asData!.value;
    }

    return SizedBox(
      height: ui_properties.continueSectionSize,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bookList.length,
        itemBuilder: (context, index) {

          EdgeInsets listPadding = const EdgeInsets.only(left: ui_properties.paddingLarge);
          if (index == bookList.length - 1) {
            listPadding = const EdgeInsets.only(left: ui_properties.paddingLarge, right: ui_properties.paddingLarge);
          }

          return Container(
            padding: listPadding,
            child: ContinueSectionEntry(
              key: constants.determineListEntryKey(key: constants.continueSectionEntryKey, index: index),
              backgroundImage: AssetImage(bookList[index].coverImagePath),
              title: bookList[index].title,
              author: bookList[index].author,
              listIndex: index,
            ),
          );
        },
      ),
    );
  }
}
