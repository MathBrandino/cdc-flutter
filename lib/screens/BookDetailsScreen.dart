import 'package:casa_do_codigo/models/Book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 350.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                book.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              background: Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  Image.network(
                    book.image,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black54
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ];
      },
      body: Center(
        child: Text("Sample Text"),
      ),
    ));
  }
}
