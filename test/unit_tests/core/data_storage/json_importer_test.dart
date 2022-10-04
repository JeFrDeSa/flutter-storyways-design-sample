import 'dart:convert';

import 'package:design_sample/core/data_storage/json_importer.dart';
import 'package:design_sample/feature/model/book.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utilities/fixtures/book_fixtures.dart' as book_fixtures;

void main() {
  JsonImporter jsonImporter = JsonImporter();

  test('should return the list of books from the data storage when called.', () async {
    // (A)rrange -> all necessary preconditions and inputs.
    jsonImporter.allBooks = [
      jsonDecode(book_fixtures.theIslandJson),
      jsonDecode(book_fixtures.theComputerJson),
    ];
    List<Book> expectedResult = [book_fixtures.theIsland, book_fixtures.theComputer];

    // (A)ct -> on the object or method under test.
    final result = await jsonImporter.readBooksFromDataStorage();

    // (A)ssert -> that the expected results have occurred.
    expect(result, expectedResult);
  });
}
