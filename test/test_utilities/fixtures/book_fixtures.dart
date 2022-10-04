import 'dart:io';

import 'package:design_sample/feature/model/book.dart';

/// "The Island" [Book] test data.
const Book theIsland = Book(
  title: "The Island",
  author: "Sam Samko",
  continueRead: false,
  releaseDate: "03. Feb 2022",
  coverImagePath: "assets/images/covers/island.jpg",
);

/// "The Island" [Book] json string test data.
final String theIslandJson = File('test/test_utilities/fixtures/book_the_island.json').readAsStringSync();

/// "The Computer" [Book] test data.
const Book theComputer = Book(
  title: "The Computer",
  author: "Sam Samko",
  continueRead: true,
  releaseDate: "20.11.2011",
  coverImagePath: "assets/images/covers/computer.jpg",
);

/// "The Computer" [Book] json string test data.
final String theComputerJson = File('test/test_utilities/fixtures/book_the_computer.json').readAsStringSync();
