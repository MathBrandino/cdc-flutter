import 'package:casa_do_codigo/data/api/BookApi.dart';
import 'package:casa_do_codigo/models/Book.dart';
import 'package:casa_do_codigo/screens/ErrorScreen.dart';
import 'package:casa_do_codigo/screens/ListScreen.dart';
import 'package:casa_do_codigo/screens/LoadingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BooksListScreen extends StatefulWidget {
  @override
  _BooksListScreenState createState() => _BooksListScreenState();
}

class _BooksListScreenState extends State<BooksListScreen> {
  Future<List<Book>> books;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: FutureBuilder<List<Book>>(
        future: books,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListScreen(snapshot.data);
          } else if (snapshot.hasError) {
            return ErrorScreen("${snapshot.error}");
          }
          return LoadingScreen();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    books = BookApi().fetchBooks();
  }
}
