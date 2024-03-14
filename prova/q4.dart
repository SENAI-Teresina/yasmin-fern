class Aluno {
  String nome;
  int idade;
  String curso;

  Aluno(this.nome, this.idade, this.curso);

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('Curso: $curso');
  }
}

void main() {
  var aluno = Aluno('Maria', 20, 'Engenharia');
  aluno.exibirDetalhes();
}
