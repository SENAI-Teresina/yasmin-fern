class Animal {
  String nome;
  String especie;
  int idade;

  Animal(this.nome, this.especie, this.idade);

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Espécie: $especie');
    print('Idade: $idade anos');
  }
}

void main() {
  var animal = Animal('Rex', 'Cachorro', 5);
  animal.exibirDetalhes();
}
