import 'package:design_sample/feature/model/book.dart';
import 'package:flutter/cupertino.dart';

/// Defines the access to the local stored books.
class JsonImporter {

  @visibleForTesting
  List<Map<String, dynamic>> allBooks = [
    {"title":"The Island","author":"Sam Samko","continueReading":"false","releaseDate": "03. Jan 2022","coverImagePath": "assets/images/covers/island.jpg"},
    {"title":"The Computer","author":"Sam Samko","continueReading":"false","releaseDate": "20. Jan 2011","coverImagePath": "assets/images/covers/computer.jpg"},
    {"title":"The Ocean","author":"Samenta Bix","continueReading":"false","releaseDate": "01. Dez 2011","coverImagePath": "assets/images/covers/wave.jpg"},
    {"title":"The Nature","author":"Lisa Pisichen","continueReading":"false","releaseDate": "03. Jan 2022","coverImagePath": "assets/images/covers/nature.jpg"},
    {"title":"Paddling","author":"Lisa Pisichen","continueReading":"false","releaseDate": "20. Dez 2011","coverImagePath": "assets/images/covers/paddling.jpg"},
    {"title":"Sunrise","author":"Chris Blue","continueReading":"false","releaseDate": "01. Dez 2011","coverImagePath": "assets/images/covers/sunrise.jpg"},
    {"title":"The Typewriter","author":"Sam Samko","continueReading":"false","releaseDate": "03. Feb 2022","coverImagePath": "assets/images/covers/typewriter.jpg"},
    {"title":"Utilities","author":"Thomas Key","continueReading":"false","releaseDate": "20. Jan 2011","coverImagePath": "assets/images/covers/utilities.jpg"},
    {"title":"The Club","author":"Susan Moller","continueReading":"true","releaseDate": "05. Feb 2012","coverImagePath": "assets/images/covers/club.jpg"},
    {"title":"The Fork","author":"Susan Moller","continueReading":"true","releaseDate": "11. Dez 2011","coverImagePath": "assets/images/covers/fork.jpg"},
    {"title":"The Mountain","author":"Samenta Bix","continueReading":"true","releaseDate": "01. Feb 2011","coverImagePath": "assets/images/covers/mountain.jpg"},
    {"title":"The Typewriter","author":"Sam Samko","continueReading":"true","releaseDate": "03. Jan 2022","coverImagePath": "assets/images/covers/typewriter.jpg"},
  ];

  /// Returns the local stored books.
  Future<List<Book>> readBooksFromDataStorage() async {
    List<Book> result = [];
    for (Map<String, dynamic> jsonBook in allBooks) {
      result.add(Book.fromJson(jsonBook));
    }
    return result;
  }
}
