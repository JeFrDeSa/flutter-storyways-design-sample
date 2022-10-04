import 'package:design_sample/feature/view/widgets/book_overview.dart';
import 'package:design_sample/feature/view/widgets/new_section_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;
import 'package:design_sample/core/utilities/constants.dart' as constants;

void main() {
  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(
    const ProviderScope(
      child: BookOverview(),
    ),
  );

  group('Layout representation', () {
    testWidgets('should show the predefined layout when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);
      await tester.pump();

      // (A)ct -> on the object or method under test.
      final continueSectionTitleText = find.text(constants.continueSectionName);
      final continueSection = find.byKey(constants.continueSectionKey);
      final newSectionTitleText = find.text(constants.continueSectionName);
      final newSectionEntries = find.byType(NewSectionEntry);

      // (A)ssert -> that the expected results have occurred.
      expect(continueSectionTitleText, findsOneWidget);
      expect(continueSection, findsOneWidget);
      expect(newSectionTitleText, findsOneWidget);
      expect(newSectionEntries, findsWidgets);
    });
  });
}
