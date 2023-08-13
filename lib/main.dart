import 'package:design_sample/core/utilities/constants.dart' as constants;
import 'package:design_sample/core/utilities/theme_data.dart' as theme_data;
import 'package:design_sample/feature/view/book_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppInstance()));
}

/// Defines the application root widget. Git test
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
        body: BookSearchPage(key: constants.bookSearchPageKey),
      ),
    );
  }
}
