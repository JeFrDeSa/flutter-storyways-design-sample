import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/view/widgets/book_overview.dart';
import 'package:design_sample/feature/view/widgets/bottom_navigation.dart';
import 'package:design_sample/feature/view/widgets/search_bar.dart';
import 'package:design_sample/feature/view/widgets/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Defines the page for a book search.
/// {Category: Widget}
class BookSearchPage extends ConsumerStatefulWidget {
  const BookSearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => BookSearchPageState();
}

class BookSearchPageState extends ConsumerState<BookSearchPage> {
  bool showBottomNavigation = true;

  @override
  void initState() {
    super.initState();
    KeyboardVisibilityController keyboardVisibilityController = KeyboardVisibilityController();
    keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        showBottomNavigation = !visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: ui_properties.searchBarHeight,
            child: SearchBar(key: constants.searchBarKey),
          ),
          Expanded(
            child: Stack(
              children: const <Widget>[
                BookOverview(key: constants.bookOverviewKey),
                SearchResult(key: constants.searchResultKey)
              ],
            ),
          ),
          Visibility(
            visible: showBottomNavigation,
            child: const BottomNavigation(),
          ),
        ],
      ),
    );
  }
}
