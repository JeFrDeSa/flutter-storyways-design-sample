import 'package:design_sample/feature/view/widgets/search_result_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;
import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;

void main() {
  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(SearchResultEntry(
    backgroundImage: AssetImage(book_fixtures.theComputer.coverImagePath),
    title: book_fixtures.theComputer.title,
    author: book_fixtures.theComputer.author,
  ));

  group('Layout representation', () {
    testWidgets('should show the predefined layout when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);

      // (A)ct -> on the object or method under test.
      final playButton = find.byType(TextButton);
      final titleText = find.text(book_fixtures.theComputer.title);
      final authorText = find.text(book_fixtures.theComputer.author);
      final coverImage = find.image(AssetImage(book_fixtures.theComputer.coverImagePath));

      // (A)ssert -> that the expected results have occurred.
      expect(playButton, findsOneWidget);
      expect(titleText, findsOneWidget);
      expect(authorText, findsOneWidget);
      expect(coverImage, findsOneWidget);
    });
  });
}
