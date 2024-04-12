import 'package:flutter/material.dart';
import 'screens/tela_inicio.dart';
import 'screens/tela_extrato.dart';
import 'screens/tela_transacoes.dart';
import 'screens/tela_pagamentos.dart';
import 'screens/tela_mais.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone do App de Banco',
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TelaInicio(),
        '/extrato': (context) => TelaExtrato(),
        '/transacoes': (context) => TelaTransacoes(),
        '/pagamentos': (context) => TelaPagamentos(),
        '/mais': (context) => TelaMaisOpcoes(),
      },
    );
  }
}
