class Book {
  final int id;
  final String date;
  final int numberOfPages;
  final String name;
  final String image;

  Book(this.id, this.date, this.numberOfPages, this.name, this.image);

  Book.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date = json['dataPublicacao'],
        numberOfPages = json['numeroPaginas'],
        name = json['nomeLivro'],
        image = json['imagemUrl'];

  @override
  String toString() {
    return 'Book{id: $id, data: $date, paginas: $numberOfPages, titulo: $name, imagem: $image}';
  }
}
