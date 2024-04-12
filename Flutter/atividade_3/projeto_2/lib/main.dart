import 'package:flutter/material.dart';
import 'screens/tela_lista_tarefas.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      home: TelaListaTarefas(),
    );
  }
}
