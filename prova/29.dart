class Fruta {
  String nome;
  String cor;
  String sabor;

  // Construtor
  Fruta(this.nome, this.cor, this.sabor);

  // Método para exibir detalhes da fruta
  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cor: $cor');
    print('Sabor: $sabor');
  }
}

void main() {
  // Exemplo de uso da classe Fruta
  var fruta = Fruta('Maçã', 'Vermelha', 'Doce');

  // Exibindo detalhes da fruta
  print('Detalhes da Fruta:');
  fruta.exibirDetalhes();
}
