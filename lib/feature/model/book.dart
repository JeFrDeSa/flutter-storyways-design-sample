import 'package:equatable/equatable.dart';

/// Defines the properties of a book.
class Book extends Equatable {
  final String title;
  final String author;
  final bool continueRead;
  final String releaseDate;
  final String coverImagePath;

  const Book(
      {required this.title,
      required this.author,
      required this.continueRead,
      required this.releaseDate,
      required this.coverImagePath});

  @override
  List<Object?> get props => [title, author, continueRead, releaseDate, coverImagePath];

  /// Returns the model based on a Json string.
  factory Book.fromJson(Map<String, dynamic> jsonMap) {
    return Book(
        title: jsonMap['title'],
        author: jsonMap['author'],
        continueRead: jsonMap['continueRead'] == "true",
        releaseDate: jsonMap['releaseDate'],
        coverImagePath: jsonMap['coverImagePath']);
  }
}
