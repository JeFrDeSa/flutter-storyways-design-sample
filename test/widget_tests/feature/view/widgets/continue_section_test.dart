import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/feature/view/widgets/continue_section.dart';
import 'package:design_sample/feature/view/widgets/continue_section_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;

void main() {
  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(
    const ProviderScope(
        child: ContinueSection(),
    ),
  );

  group('Layout representation', () {

    testWidgets('should show the predefined layout when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);
      await tester.pump();

      // (A)ct -> on the object or method under test.
      final sectionEntries = find.byType(ContinueSectionEntry);

      // (A)ssert -> that the expected results have occurred.
      expect(sectionEntries, findsWidgets);
    });

    testWidgets('should show the 5th list entry when scrolled.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      ValueKey firstListEntryKey = ValueKey("${constants.continueSectionEntryKey.value}0");
      ValueKey scrolledListEntryKey = ValueKey("${constants.continueSectionEntryKey.value}5");
      await tester.pumpWidget(widgetTestContainer);

      // (A)ct -> on the object or method under test.
      final firstListEntry = find.byKey(firstListEntryKey);
      await tester.scrollUntilVisible(find.byKey(scrolledListEntryKey), 5);
      final scrolledListEntry = find.byKey(scrolledListEntryKey);

      // (A)ssert -> that the expected results have occurred.
      expect(firstListEntry, findsOneWidget);
      expect(scrolledListEntry, findsOneWidget);
    });

  });
}
