import 'package:flutter/material.dart';
import 'package:projeto_1/screens/tela_inicial.dart'; // Importa a tela inicial
import 'package:projeto_1/screens/tela_detalhes.dart'; // Importa a tela de detalhes

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => TelaInicial(), // Define a rota para a tela inicial
        '/detalhes': (context) => TelaDetalhes(), // Define a rota para a tela de detalhes
      },
    );
  }
}
