class ContaBancaria {
  int numeroConta;
  double saldo;
  String titular;

  // Construtor
  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  // Método para depositar dinheiro na conta
  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$$valor realizado com sucesso. Novo saldo: R\$$saldo');
  }

  // Método para sacar dinheiro da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$$valor realizado com sucesso. Novo saldo: R\$$saldo');
    } else {
      print('Saldo insuficiente para realizar o saque.');
    }
  }

  // Método para exibir detalhes da conta
  void exibirDetalhes() {
    print('Número da Conta: $numeroConta');
    print('Titular: $titular');
    print('Saldo: R\$$saldo');
  }
}

// Classe ContaInvestimento herda da classe ContaBancaria
class ContaInvestimento extends ContaBancaria {
  double taxaRendimento;

  // Construtor
  ContaInvestimento(int numeroConta, double saldo, String titular, this.taxaRendimento)
      : super(numeroConta, saldo, titular);

  // Método para calcular o rendimento da conta
  double calcularRendimento() {
    return saldo * (taxaRendimento / 100);
  }

  // Método para exibir detalhes da conta de investimento
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Taxa de Rendimento: $taxaRendimento%');
    print('Rendimento: R\${calcularRendimento().toStringAsFixed(2)}');
  }
}

void main() {
  // Exemplo de uso das classes ContaBancaria e ContaInvestimento
  var contaInvestimento = ContaInvestimento(123456, 10000.0, 'João', 5.0);

  // Exibindo detalhes da conta de investimento
  print('Detalhes da Conta de Investimento:');
  contaInvestimento.exibirDetalhes();
}
