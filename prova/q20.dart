class DVD {
  String titulo;
  int duracao;
  String diretor;

  DVD(this.titulo, this.duracao, this.diretor);

  void exibirDetalhes() {
    print('Título: $titulo');
    print('Duração: $duracao minutos');
    print('Diretor: $diretor');
  }
}

void main() {
  var dvd = DVD('Matrix', 136, 'Lana Wachowski');
  dvd.exibirDetalhes();
}
