class Livro {
  String titulo;
  String autor;
  int numeroPaginas;

  Livro(this.titulo, this.autor, this.numeroPaginas);

  void exibirDetalhes() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('Número de páginas: $numeroPaginas');
  }
}

void main() {
  var livro = Livro('O Senhor dos Anéis', 'J.R.R. Tolkien', 1000);
  livro.exibirDetalhes();
}
