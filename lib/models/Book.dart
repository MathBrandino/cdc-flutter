class Book {
  final int id;
  final String data;
  final int paginas;
  final String titulo;
  final String imagem;

  Book(this.id, this.data, this.paginas, this.titulo, this.imagem);

  Book.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        data = json['dataPublicacao'],
        paginas = json['numeroPaginas'],
        titulo = json['nomeLivro'],
        imagem = json['imagemUrl'];

  @override
  String toString() {
    return 'Book{id: $id, data: $data, paginas: $paginas, titulo: $titulo, imagem: $imagem}';
  }
}
