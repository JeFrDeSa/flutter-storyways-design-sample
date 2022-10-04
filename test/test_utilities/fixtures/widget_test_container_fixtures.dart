import 'package:flutter/material.dart';
import 'package:design_sample/core/utilities/theme_data.dart' as theme_data;
import 'package:flutter_test/flutter_test.dart';

/// The default test container for widget tests.
Widget getDefaultWidgetTestContainer(Widget testWidget) {
  TestWidgetsFlutterBinding.ensureInitialized();
  return MaterialApp(
    theme: theme_data.lightTheme,
    darkTheme: theme_data.darkTheme,
    home: Builder(builder: (context) {
      return Scaffold(
        body: testWidget,
      );
    }),
  );
}