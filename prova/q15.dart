class Pessoa {
  String nome;
  double altura;
  double peso;

  Pessoa(this.nome, this.altura, this.peso);

  double calcularIMC() {
    return peso / (altura * altura);
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Altura: $altura m');
    print('Peso: $peso kg');
    print('IMC: ${calcularIMC().toStringAsFixed(2)}');
  }
}

void main() {
  var pessoa = Pessoa('João', 1.75, 70.0);
  pessoa.exibirDetalhes();
}
