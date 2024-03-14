class ContaBancaria {
  int numeroConta;
  double saldo;
  String titular;

  // Construtor
  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  // Método para depositar dinheiro na conta
  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo');
  }

  // Método para sacar dinheiro da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo');
    } else {
      print('Saldo insuficiente para realizar o saque.');
    }
  }

  // Método para exibir detalhes da conta
  void exibirDetalhes() {
    print('Número da Conta: $numeroConta');
    print('Titular: $titular');
    print('Saldo: R\$ $saldo');
  }
}

// Classe ContaPoupanca herda da classe ContaBancaria
class ContaPoupanca extends ContaBancaria {
  double taxaJuros;

  // Construtor
  ContaPoupanca(int numeroConta, double saldo, String titular, this.taxaJuros)
      : super(numeroConta, saldo, titular);

  // Método para calcular os juros da conta poupança
  double calcularJuros() {
    return saldo * (taxaJuros / 100);
  }

  // Método para exibir detalhes da conta poupança
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Taxa de Juros: $taxaJuros%');
    print('Juros: R\$ ${calcularJuros().toStringAsFixed(2)}');
  }
}

void main() {
  // Exemplo de uso das classes ContaBancaria e ContaPoupanca
  var contaPoupanca = ContaPoupanca(123456, 1000.0, 'Maria', 0.5);

  // Exibindo detalhes da conta poupança
  print('Detalhes da Conta Poupança:');
  contaPoupanca.exibirDetalhes();
}
