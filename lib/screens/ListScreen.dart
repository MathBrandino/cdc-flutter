import 'package:casa_do_codigo/models/Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Book> books;

  ListScreen(this.books);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return BookItem(books[index]);
      },
      itemCount: books.length,
    );
  }
}

class BookItem extends StatelessWidget {
  final Book book;

  BookItem(this.book);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 100,
          child: Image.network(
            book.imagem,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
          ),
        ),
        title: Text(book.titulo),
      ),
    );
  }
}
