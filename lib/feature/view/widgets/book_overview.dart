import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/feature/controller/book_search.dart';
import 'package:design_sample/feature/model/book.dart';
import 'package:design_sample/feature/view/widgets/book_overview/continue_section_title.dart';
import 'package:design_sample/feature/view/widgets/book_overview/new_section_title.dart';
import 'package:design_sample/feature/view/widgets/continue_section.dart';
import 'package:design_sample/feature/view/widgets/new_section_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookOverview extends ConsumerStatefulWidget {
  const BookOverview({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => BookOverviewState();
}

class BookOverviewState extends ConsumerState<BookOverview> {
  List<Book> newBookList = [];
  final Map<int, Widget> _widgetList = {
    0: const ContinueSectionTitle(),
    1: const ContinueSection(key: constants.continueSectionKey),
    2: const NewSectionTitle(),
  };

  @override
  Widget build(BuildContext context) {
    final dataList = ref.watch(newSectionProvider);

    if (dataList.asData != null) {
      newBookList = dataList.asData!.value;
    }

    return GestureDetector(
      // This ensures the hiding of the soft keyboard by tapping the background
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        ref.read(searchProvider.state).update((state) => "");
      },
      child: ListView.separated(
        separatorBuilder: (context, index) {
          if(index > _widgetList.length-1) {
            return const Divider();
          }else{
            return const SizedBox();
          }
        },
        key: constants.newSectionListKey,
        itemCount: newBookList.length + _widgetList.length,
        itemBuilder: (context, index) {
          if (_widgetList.containsKey(index)) {
            return _widgetList[index]!;
          } else {
            int recalculatedIndex = index - _widgetList.length;
            return NewSectionEntry(
              key: constants.determineListEntryKey(key: constants.newSectionEntryKey, index: recalculatedIndex),
              backgroundImage: AssetImage(newBookList[recalculatedIndex].coverImagePath),
              title: newBookList[recalculatedIndex].title,
              author: newBookList[recalculatedIndex].author,
              releaseDate: newBookList[recalculatedIndex].releaseDate,
              listIndex: index,
            );
          }
        },
      ),
    );
  }
}
