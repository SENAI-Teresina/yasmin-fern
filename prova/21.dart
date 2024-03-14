class DVD {
  String titulo;
  String diretor;
  int duracao; // em minutos

  // Construtor
  DVD(this.titulo, this.diretor, this.duracao);

  // Método para exibir detalhes do DVD
  void exibirDetalhes() {
    print('Título: $titulo');
    print('Diretor: $diretor');
    print('Duração: $duracao minutos');
  }
}

void main() {
  // Exemplo de uso da classe DVD
  var dvd = DVD('Interestelar', 'Christopher Nolan', 169);

  // Exibindo detalhes do DVD
  print('Detalhes do DVD:');
  dvd.exibirDetalhes();
}
