import 'dart:io';

// Classe Cliente
class Cliente {
  String nome;
  String email;
  String telefone;

  Cliente(this.nome, this.email, this.telefone);

  void exibirDados() {
    print('Nome: $nome');
    print('Email: $email');
    print('Telefone: $telefone');
  }
}

void main() {
  List<Cliente> listaClientes = [];

  while (true) {
    print('Digite o nome do cliente (ou sair para encerrar):');
    var nome = stdin.readLineSync();
    if (nome == 'sair') break;

    print('Digite o email do cliente:');
    var email = stdin.readLineSync();

    print('Digite o telefone do cliente:');
    var telefone = stdin.readLineSync();

    var cliente = Cliente(nome!, email!, telefone!);
    listaClientes.add(cliente);
  }

  print('\nClientes cadastrados:');
  for (var cliente in listaClientes) {
    cliente.exibirDados();
    print('---');
  }
}
