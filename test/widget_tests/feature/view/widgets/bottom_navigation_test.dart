import 'package:design_sample/core/utilities/ui_properties.dart' as ui_properties;
import 'package:design_sample/feature/view/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container_fixtures;

void main() {
  Widget widgetTestContainer = widget_test_container_fixtures.getDefaultWidgetTestContainer(const BottomNavigation());

  group('Layout representation', () {
    testWidgets('should show the home button and three further buttons when created.', (WidgetTester tester) async {
      // (A)rrange -> all necessary preconditions and inputs.
      await tester.pumpWidget(widgetTestContainer);

      // (A)ct -> on the object or method under test.
      final homeIcon = find.image(ui_properties.homeIcon.image);
      final homeText = find.text("Home");
      final secondEntryIcon = find.image(ui_properties.multiIcon.image);
      final thirdEntryIcon = find.image(ui_properties.compassIcon.image);
      final fourthEntryIcon = find.image(ui_properties.notesIcon.image);

      // (A)ssert -> that the expected results have occurred.
      expect(homeIcon, findsOneWidget);
      expect(homeText, findsOneWidget);
      expect(secondEntryIcon, findsOneWidget);
      expect(thirdEntryIcon, findsOneWidget);
      expect(fourthEntryIcon, findsOneWidget);
    });
  });
}
