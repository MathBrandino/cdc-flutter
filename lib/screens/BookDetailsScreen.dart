import 'package:casa_do_codigo/models/Book.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
      ),
    );
  }
}
