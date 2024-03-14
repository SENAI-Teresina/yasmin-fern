class Estudante {
  String nome;
  int matricula;
  String curso;
  List<double> notas;

  // Construtor
  Estudante(this.nome, this.matricula, this.curso, this.notas);

  // Método para calcular a média das notas
  double calcularMedia() {
    if (notas.isEmpty) {
      return 0;
    }
    var total = notas.reduce((a, b) => a + b);
    return total / notas.length;
  }

  // Método para exibir detalhes do estudante
  void exibirDetalhes() {
    print('Nome: $nome');
    print('Matrícula: $matricula');
    print('Curso: $curso');
    print('Notas: $notas');
    print('Média: ${calcularMedia().toStringAsFixed(2)}');
  }
}

void main() {
  // Exemplo de uso da classe Estudante
  var estudante = Estudante('João', 12345, 'Engenharia', [7.5, 8.0, 6.5]);

  // Exibindo detalhes do estudante
  print('Detalhes do Estudante:');
  estudante.exibirDetalhes();
}
