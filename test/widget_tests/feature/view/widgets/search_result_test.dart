import 'package:design_sample/feature/view/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;
import '../../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;

void main() {
  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(
    const ProviderScope(
      child: SearchResult(),
    ),
  );

  group('Layout representation', () {
    testWidgets('should show the predefined layout when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);
      await tester.pump();

      // (A)ct -> on the object or method under test.
      final coverImage = find.byType(TextField);
      final titleText = find.text(book_fixtures.theComputer.title);
      final authorText = find.text(book_fixtures.theComputer.author);

      // (A)ssert -> that the expected results have occurred.
      expect(coverImage, findsOneWidget);
      expect(titleText, findsOneWidget);
      expect(authorText, findsOneWidget);
    });
  });
}