import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/feature/view/widgets/search_result_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;
import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;

void main() {
  const int index = 0;

  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(SearchResultEntry(
    backgroundImage: AssetImage(book_fixtures.theComputer.coverImagePath),
    title: book_fixtures.theComputer.title,
    author: book_fixtures.theComputer.author,
    listIndex: index,
  ));

  group('Layout representation', () {
    testWidgets('should show the book information and cover image when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      ValueKey key = constants.determineListEntryKey(key: constants.searchResultEntryImageKey, index: index);
      await tester.pumpWidget(widgetTestContainer);
      await tester.pump();

      // (A)ct -> on the object or method under test.
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
