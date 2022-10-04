import 'package:flutter/material.dart';
import 'package:design_sample/core/utilities/theme_data.dart' as theme_data;

void main() {
  runApp(const AppInstance());
}

/// Defines the application root widget.
class AppInstance extends StatelessWidget {
  const AppInstance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Sample',
      theme: theme_data.lightTheme,
      darkTheme: theme_data.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Placeholder(),
      ),
    );
  }
}
