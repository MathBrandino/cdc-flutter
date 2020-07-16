class BooksResponse {
  final List<dynamic> booksToConvert;

  BooksResponse(this.booksToConvert);

  BooksResponse.fromJson(Map<String, dynamic> json)
      : booksToConvert = json['livros'];
}
