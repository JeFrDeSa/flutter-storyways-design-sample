import 'dart:convert';

import 'package:design_sample/feature/model/book.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utilities/fixtures/book_fixtures.dart' as book_fixture;

void main() {
  test('should convert the json string to a book model when called.', () async {
    // (A)rrange -> all necessary preconditions and inputs.
    Book expectedResult = book_fixture.theIsland;

    // (A)ct -> on the object or method under test.
    Book theIsland = Book.fromJson(jsonDecode(book_fixture.theIslandJson));

    // (A)ssert -> that the expected results have occurred.
    expect(theIsland.title, expectedResult.title);
    expect(theIsland.author, expectedResult.author);
    expect(theIsland.continueRead, expectedResult.continueRead);
    expect(theIsland.releaseDate, expectedResult.releaseDate);
    expect(theIsland.coverImagePath, expectedResult.coverImagePath);
    expect(theIsland, expectedResult);
  });
}
