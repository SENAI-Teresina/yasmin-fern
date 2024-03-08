import 'dart:io';

void main() {
  
  print('Por favor, digite o primeiro número:');
  double num1 = double.parse(stdin.readLineSync()!);
  
  print('Por favor, digite o segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);
  
  print('Por favor, escolha a operação (+, -, *, /):');
  String operacao = stdin.readLineSync()!;
  
  double resultado = 0;
  
  if (operacao == '+') {
    resultado = num1 + num2;
  } else if (operacao == '-') {
    resultado = num1 - num2;
  } else if (operacao == '*') {
    resultado = num1 * num2;
  } else if (operacao == '/') {
    if (num2 != 0) {
      resultado = num1 / num2;
    } else {
      print('Erro: Divisão por zero!');
      return;
    }
  } else {
    print('Operação inválida!');
    return;
  }
  
  print('O resultado da operação é: $resultado');
}