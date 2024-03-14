class Jogo {
  String nome;
  String genero;
  String plataforma;

  Jogo(this.nome, this.genero, this.plataforma);

  void exibirInformacoes() {
    print('Nome do jogo: $nome');
    print('Gênero: $genero');
    print('Plataforma: $plataforma');
  }
}

void main() {
  var jogo = Jogo('The Legend of Zelda: Breath of the Wild', 'Ação-Aventura', 'Nintendo Switch');
  jogo.exibirInformacoes();
}
