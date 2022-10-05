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
    testWidgets('should show a list of continue section entries when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);
      await tester.pump();

      // (A)ct -> on the object or method under test.
      final sectionEntries = find.byType(ContinueSectionEntry);

      // (A)ssert -> that the expected results have occurred.
      expect(sectionEntries, findsWidgets);
    });

    testWidgets('should show the 7th continue book list entry when scrolled.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      ValueKey firstListEntryKey = constants.determineListEntryKey(key: constants.continueSectionEntryKey, index: 0);
      ValueKey scrolledListEntryKey = constants.determineListEntryKey(key: constants.continueSectionEntryKey, index: 6);
      await tester.pumpWidget(widgetTestContainer);
      await tester.pump();

      expect(find.byKey(firstListEntryKey), findsOneWidget);
      expect(find.byKey(scrolledListEntryKey), findsNothing);

      // (A)ct -> on the object or method under test.
      await tester.dragUntilVisible(
          find.byKey(scrolledListEntryKey),
          find.byType(ListView),
          const Offset(-250,0),
      ).then((value) => null);

      // (A)ssert -> that the expected results have occurred.
      expect(find.byKey(firstListEntryKey), findsNothing);
      expect(find.byKey(scrolledListEntryKey), findsOneWidget);
    });

  });
}
