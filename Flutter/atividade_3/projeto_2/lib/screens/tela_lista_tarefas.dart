import 'package:flutter/material.dart';
import 'tela_adicionar_tarefa.dart';

class TelaListaTarefas extends StatefulWidget {
  @override
  _TelaListaTarefasState createState() => _TelaListaTarefasState();
}

class _TelaListaTarefasState extends State<TelaListaTarefas> {
  List<String> _tarefas = ['Tarefa 1', 'Tarefa 2', 'Tarefa 3']; // Exemplo de lista de tarefas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_tarefas[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaAdicionarTarefa()),
          ).then((value) {
            if (value != null) {
              setState(() {
                _tarefas.add(value);
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
