import 'dart:convert';

import 'package:design_sample/core/data_storage/json_importer.dart';
import 'package:design_sample/feature/model/book.dart';

import '../fixtures/book_fixtures.dart' as book_fixtures;

class JsonImporterMock implements JsonImporter {
  @override
  List<Map<String, dynamic>> allBooks = [
    jsonDecode(book_fixtures.theIslandJson),
    jsonDecode(book_fixtures.theComputerJson),
  ];

  @override
  Future<List<Book>> readBooksFromDataStorage() async {
    return [
      book_fixtures.theIsland,
      book_fixtures.theComputer,
    ];
  }
}
