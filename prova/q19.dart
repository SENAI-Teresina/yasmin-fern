class Estudante {
  String nome;
  int matricula;
  String curso;
  List<double> notas;

  Estudante(this.nome, this.matricula, this.curso, this.notas);

  double calcularMedia() {
    if (notas.isEmpty) {
      return 0.0;
    }
    var soma = notas.reduce((a, b) => a + b);
    return soma / notas.length;
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Matrícula: $matricula');
    print('Curso: $curso');
    print('Média das notas: ${calcularMedia().toStringAsFixed(2)}');
  }
}

void main() {
  var notas = [7.5, 8.0, 9.5];
  var estudante = Estudante('Maria', 12345, 'Engenharia', notas);
  estudante.exibirDetalhes();
}
