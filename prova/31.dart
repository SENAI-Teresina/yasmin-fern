class Empregado {
  String nome;
  String cargo;
  double salario;

  // Construtor
  Empregado(this.nome, this.cargo, this.salario);

  // Método para calcular o bônus do empregado
  double calcularBonus(double percentual) {
    return salario * (percentual / 100);
  }

  // Método para exibir detalhes do empregado
  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cargo: $cargo');
    print('Salário: R\$ $salario');
  }
}

void main() {
  // Exemplo de uso da classe Empregado
  var empregado = Empregado('João', 'Programador', 5000.0);

  // Exibindo detalhes do empregado
  print('Detalhes do Empregado:');
  empregado.exibirDetalhes();

  // Calculando e exibindo o bônus do empregado
  var bonus = empregado.calcularBonus(10);
  print('Bônus: R\$ $bonus');
}
