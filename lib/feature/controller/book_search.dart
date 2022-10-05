import 'package:design_sample/core/data_storage/json_importer.dart';
import 'package:design_sample/feature/model/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Returns the access to the external data storage api.
final dataStorageProvider = Provider((ref) => JsonImporter());

/// Returns all [Book]s that are relevant for the new section.
final newSectionProvider = FutureProvider((ref) async {
  final dataStorage = ref.read(dataStorageProvider);
  final books = await dataStorage.readBooksFromDataStorage();

  return _sectionBooks(books, false);
});

/// Returns all [Book]s that are relevant for the continue section.
final continueSectionProvider = FutureProvider((ref) async {
  final dataStorage = ref.read(dataStorageProvider);
  final books = await dataStorage.readBooksFromDataStorage();

  return _sectionBooks(books, true);
});

/// Returns a filtered list of [Book]s based on its 'continueReading' property.
List<Book> _sectionBooks(List<Book> books, bool continueReading) {
  List<Book> sectionRelevantBooks = [];

  for (Book book in books) {
    if (book.continueReading == continueReading) {
      sectionRelevantBooks.add(book);
    }
  }
  return sectionRelevantBooks;
}

/// Returns the current state of the book search based on the search text.
final searchProvider = StateProvider((ref) => "");

/// Returns all available [Books] of the data storage.
final searchBookListProvider = FutureProvider<List<Book>>((ref) async {
  final dataStorage = ref.read(dataStorageProvider);
  List<Book> allBooks = await dataStorage.readBooksFromDataStorage();
  return allBooks;
});

/// Returns a filtered list of [Book]s based on the current search text.
final searchResultProvider = FutureProvider<List<Book>>((ref) async {
  final searchText = ref.watch(searchProvider);
  final books = ref.watch(searchBookListProvider);

  List<Book> searchResult = [];

  if (books.asData == null) {
    searchResult = [];
  } else {
    for (Book book in books.asData!.value) {
      if (searchText != "" && book.title.toLowerCase().contains(searchText.toLowerCase())) {
        searchResult.add(book);
      }
    }
  }
  return searchResult;
});


