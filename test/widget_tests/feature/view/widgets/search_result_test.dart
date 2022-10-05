import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/feature/controller/book_search.dart';
import 'package:design_sample/feature/view/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;
import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container;

void main() {
  const int index = 0;

  Widget getBookSearchConsumerWidgetTestContainer() {
    return Consumer(builder: (context, ref, _) {
      return Column(
        children: <Widget>[
          MaterialButton(
            child: const SizedBox(),
            onPressed: () {
              ref.read(searchProvider.state).update((state) => "COMPUTER");
            },
          ),
          const Expanded(
            child: SearchResult(),
          ),
        ],
      );
    });
  }

  Widget getProviderScope() {
    return ProviderScope(
      child: widget_test_container.getDefaultWidgetTestContainer(getBookSearchConsumerWidgetTestContainer()),
    );
  }

  group('Layout representation', () {
    testWidgets('should show the search result as a list of books when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      ValueKey key = constants.determineListEntryKey(key: constants.searchResultEntryImageKey, index: index);
      await tester.pumpWidget(getProviderScope());
      await tester.pump();

      // (A)ct -> on the object or method under test.
      await tester.tap(find.byType(MaterialButton));
      await tester.pumpAndSettle();

      final titleAndAuthor = tester.widget<RichText>(find.byType(RichText)).text.toPlainText();
      final container = tester.widget<Container>(find.byKey(key));
      String boxDecorationProperties = (container.decoration! as BoxDecoration).toString();

      // (A)ssert -> that the expected results have occurred.
      expect(titleAndAuthor.contains(book_fixtures.theComputer.title), true);
      expect(titleAndAuthor.contains(book_fixtures.theComputer.author), true);
      expect(boxDecorationProperties.contains(book_fixtures.theComputer.coverImagePath), true);
    });
  });
}
