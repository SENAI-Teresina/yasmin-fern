
class ContaBancaria {
  int numeroConta;
  double saldo;
  String titular;

  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo');
    } else {
      print('Saldo insuficiente para realizar o saque.');
    }
  }

  void exibirDetalhes() {
    print('Número da conta: $numeroConta');
    print('Titular: $titular');
    print('Saldo: R\$ $saldo');
  }
}

class ContaCorrente extends ContaBancaria {
  double taxaManutencao;

  ContaCorrente(int numeroConta, double saldo, String titular, this.taxaManutencao) : super(numeroConta, saldo, titular);

  void cobrarTaxaManutencao() {
    saldo -= taxaManutencao;
    print('Taxa de manutenção de R\$ $taxaManutencao cobrada. Novo saldo: R\$ $saldo');
  }

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Taxa de manutenção: R\$ $taxaManutencao');
  }
}

void main() {
  var contaCorrente = ContaCorrente(12345, 1000.0, 'João', 10.0);
  contaCorrente.exibirDetalhes();
  contaCorrente.depositar(500.0);
  contaCorrente.sacar(200.0);
  contaCorrente.cobrarTaxaManutencao();
}
