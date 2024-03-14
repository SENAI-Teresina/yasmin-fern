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

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, 'Cachorro', idade);

  void latir() {
    print('$nome está latindo!');
  }

  void brincar() {
    print('$nome está brincando!');
  }
}

void main() {
  var cachorro = Cachorro('Rex', 5);
  cachorro.exibirDetalhes();
  cachorro.latir();
  cachorro.brincar();
}
