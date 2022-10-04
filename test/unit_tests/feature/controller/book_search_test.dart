import 'package:design_sample/feature/controller/book_search.dart';
import 'package:design_sample/feature/model/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;
import '../../../test_utilities/fixtures/widget_test_container_fixtures.dart' as widget_test_container;
import '../../../test_utilities/mocks/json_importer_mock.dart';

void main() {
  late List<Book> bookList = [];

  setUp(() {
    bookList = [];
  });

  Widget getDefaultConsumerWidget(FutureProvider provider) {
    return Consumer(builder: (context, ref, _) {
      final dataList = ref.watch(provider);

      if (dataList.asData == null) {
        return const CircularProgressIndicator();
      }

      bookList = dataList.asData!.value;
      return const Placeholder();
    });
  }

  Widget getBookSearchConsumerWidget(FutureProvider provider) {
    return Consumer(builder: (context, ref, _) {
      final dataList = ref.watch(provider);

      if (dataList.asData == null) {
        return TextButton(
          child: const Text("Start search!"),
          onPressed: () {
            ref.read(searchProvider.state).update((state) => "COMPUTER");
          },
        );
      }

      bookList = dataList.asData!.value;
      return const Placeholder();
    });
  }

  Widget getProviderScopeWithMock(Widget testContainer) {
    return ProviderScope(
      overrides: [
        dataStorageProvider.overrideWithValue(JsonImporterMock()),
      ],
      child: testContainer,
    );
  }

  Widget newSectionTestContainer = widget_test_container.getDefaultWidgetTestContainer(getDefaultConsumerWidget(newSectionProvider));
  Widget continueSectionTestContainer = widget_test_container.getDefaultWidgetTestContainer(getDefaultConsumerWidget(continueSectionProvider));
  Widget searchResultTestContainer = widget_test_container.getDefaultWidgetTestContainer(getBookSearchConsumerWidget(searchResultProvider));


  testWidgets('should provide all new books of the data storage when requested.', (WidgetTester tester) async {
    // (A)rrange -> all necessary preconditions and inputs.
    await tester.pumpWidget(getProviderScopeWithMock(newSectionTestContainer));

    // (A)ct -> on the object or method under test.
    await tester.pump();

    // (A)ssert -> that the expected results have occurred.
    expect(bookList, [book_fixtures.theIsland]);
  });

  testWidgets('should provide all viewed books of the data storage when requested.', (WidgetTester tester) async {
    // (A)rrange -> all necessary preconditions and inputs.
    await tester.pumpWidget(getProviderScopeWithMock(continueSectionTestContainer));

    // (A)ct -> on the object or method under test.
    await tester.pump();

    // (A)ssert -> that the expected results have occurred.
    expect(bookList, [book_fixtures.theComputer]);
  });

  testWidgets('should provide all books that contain \'COMPUTER\' in the title when requested.', (WidgetTester tester) async {
    // (A)rrange -> all necessary preconditions and inputs.
    await tester.pumpWidget(getProviderScopeWithMock(searchResultTestContainer));

    // (A)ct -> on the object or method under test.
    await tester.tap(find.byType(TextButton));
    await tester.pumpAndSettle();

    // (A)ssert -> that the expected results have occurred.
    expect(bookList, <Book>[book_fixtures.theComputer]);
  });
}
