import 'package:casa_do_codigo/data/api/BookApi.dart';
import 'package:casa_do_codigo/models/Book.dart';
import 'package:casa_do_codigo/screens/ListScreen.dart';
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
        builder: ( context, snapshot) {
          if (snapshot.hasData) {
            return ListScreen(snapshot.data);
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error),
            );
          }
          return Center(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Loading items'),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          );
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
