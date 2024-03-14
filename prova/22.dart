// Classe Animal representa um animal
class Animal {
  String nome;
  String especie;
  int idade;

  // Construtor
  Animal(this.nome, this.especie, this.idade);

  // Método para exibir detalhes do animal
  void exibirDetalhes() {
    print('Nome: $nome');
    print('Espécie: $especie');
    print('Idade: $idade');
  }
}

// Classe Gato herda da classe Animal
class Gato extends Animal {
  // Construtor
  Gato(String nome, int idade) : super(nome, 'Gato', idade);

  // Método para o gato miar
  void miar() {
    print('$nome está miando...');
  }

  // Método para o gato dormir
  void dormir() {
    print('$nome está dormindo...');
  }
}

void main() {
  // Exemplo de uso da classe Gato
  var gato = Gato('Bolinha', 3);

  // Exibindo detalhes do gato
  print('Detalhes do Gato:');
  gato.exibirDetalhes();

  // Fazendo o gato miar e dormir
  gato.miar();
  gato.dormir();
}
