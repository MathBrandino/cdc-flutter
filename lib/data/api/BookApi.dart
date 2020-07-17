import 'package:casa_do_codigo/data/api/BookConverter.dart';
import 'package:casa_do_codigo/models/Book.dart';
import 'package:http/http.dart';

class BookApi {
  Future<List<Book>> fetchBooks() async {
    final response = await get(
        'https://cdcmob.herokuapp.com/listarLivros?qtdLivros=20&indicePrimeiroLivro=0');
    if (response.statusCode == 200) return BookConverter.decode(response.body);
    throw Exception("Problem with connection");
  }
}
