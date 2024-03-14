class Funcionario {
  String nome;
  String cargo;
  double salario;

  Funcionario(this.nome, this.cargo, this.salario);

  void calcularAumento(double percentual) {
    salario += salario * percentual / 100;
    print('Novo salário de $nome: R\$ $salario');
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cargo: $cargo');
    print('Salário: R\$ $salario');
  }
}

void main() {
  var funcionario = Funcionario('João', 'Analista de Sistemas', 5000.0);
  funcionario.calcularAumento(10);
  funcionario.exibirDetalhes();
}
