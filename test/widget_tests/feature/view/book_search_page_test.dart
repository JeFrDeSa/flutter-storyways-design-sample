import 'package:design_sample/feature/view/book_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container;
import 'package:design_sample/core/utilities/constants.dart' as constants;

void main() {
  late final Widget testContainer;

  testContainer = widget_test_container.getDefaultWidgetTestContainer(
    const ProviderScope(child: BookSearchPage()),
  );

  group('Layout representation', () {
    // Should <SHOW SOMETHING> when <SOMETHING>
    testWidgets('should show a searchbar and a book overview when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(testContainer);

      // (A)ct -> on the object or method under test.
      final searchBar = find.byKey(constants.searchBarKey);
      final booksOverview = find.byKey(constants.bookOverviewKey);

      // (A)ssert -> that the expected results have occurred.
      expect(searchBar, findsOneWidget);
      expect(booksOverview, findsOneWidget);
    });
  });
}
