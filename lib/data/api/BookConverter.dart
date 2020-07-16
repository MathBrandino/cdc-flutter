import 'dart:convert';

import 'package:casa_do_codigo/models/Book.dart';

import 'BooksResponse.dart';

class BookConverter {
  static List<Book> decode(String response) {
    List<Book> books = List();
    var responseBook = BooksResponse.fromJson(json.decode(response));

    responseBook.booksToConvert.forEach((element) {
      books.add(Book.fromJson(element));
    });
    return books;
  }
}
