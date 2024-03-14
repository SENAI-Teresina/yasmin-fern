class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Salário: R\$ $salario');
  }
}

class FuncionarioHorista extends Funcionario {
  double horasTrabalhadas;
  double valorHora;
  

  FuncionarioHorista(String nome, double salarioPorHora, double horasTrabalhadas)
      : valorHora = salarioPorHora,
        super(nome, 0);

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Horas trabalhadas: $horasTrabalhadas');
    print('Valor da hora: R\$ $valorHora');
    print('Salário total: R\$ ${calcularSalario().toStringAsFixed(2)}');
  }

  double calcularSalario() {
    return horasTrabalhadas * valorHora;
  }
}

void main() {
  var funcionarioHorista = FuncionarioHorista('João', 25, 40);
  funcionarioHorista.exibirDetalhes();
}
