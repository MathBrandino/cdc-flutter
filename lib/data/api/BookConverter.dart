import 'dart:convert';

import 'package:casa_do_codigo/models/Book.dart';

import 'BooksResponse.dart';

class BookConverter {
  static List<Book> decode(String response) {
    var responseBook = BooksResponse.fromJson(json.decode(response));
    return responseBook.booksToConvert
        .map((element) => Book.fromJson(element))
        .toList();
  }
}
