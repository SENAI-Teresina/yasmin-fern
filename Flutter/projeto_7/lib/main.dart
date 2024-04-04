import 'package:flutter/material.dart';

void main() {
  runApp(TaskList());
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tarefas'),
        ),
        body: TaskListView(),
      ),
    );
  }
}

class TaskListView extends StatelessWidget {
  final List<String> tasks = [
    'Estudar para a prova',
    'Fazer compras no mercado',
    'Limpar a casa',
    'Fazer exercícios físicos',
    'Ler um livro',
    'Estudar para a prova',
    'Fazer compras no mercado',
    'Limpar a casa',
    'Fazer exercícios físicos',
    'Ler um livro',
    'Estudar para a prova',
    'Fazer compras no mercado',
    'Limpar a casa',
    'Fazer exercícios físicos',
    'Ler um livro',
    'Estudar para a prova',
    'Fazer compras no mercado',
    'Limpar a casa',
    'Fazer exercícios físicos',
    'Ler um livro',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index]),
          leading: Icon(Icons.check_circle),
          onTap: () {
            // Ação ao clicar na tarefa
            print('Tarefa ${tasks[index]} clicada!');
          },
        );
      },
    );
  }
}
