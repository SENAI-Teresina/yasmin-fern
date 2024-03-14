class ContaBancaria {
  int numeroConta;
  double saldo;
  String titular;

  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  void depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      print('Depósito de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo');
    } else {
      print('Valor de depósito inválido.');
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado com sucesso. Novo saldo: R\$ $saldo');
    } else {
      print('Saldo insuficiente ou valor de saque inválido.');
    }
  }

  void exibirSaldo() {
    print('Saldo da conta de $titular: R\$ $saldo');
  }
}

void main() {
  var conta = ContaBancaria(12345, 1000.0, 'João');
  conta.exibirSaldo();
  conta.depositar(500.0);
  conta.sacar(200.0);
}
