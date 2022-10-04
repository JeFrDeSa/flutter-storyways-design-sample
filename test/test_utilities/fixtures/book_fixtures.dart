
import 'dart:io';

import 'package:design_sample/feature/model/book.dart';

/// "The Island" [Book] test data.
const Book theIsland = Book(
  title: "The Island",
  author: "Sam Samko",
  releaseDate: "03. Feb 2022",
  coverImagePath: "assets/images/covers/island.jpg",
);

/// "The Island" [Book] json string test data.
final String theIslandJson = File('test/test_utilities/fixtures/book_the_island.json').readAsStringSync();