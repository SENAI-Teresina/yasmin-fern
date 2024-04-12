import 'package:flutter/material.dart';

class TelaAdicionarTarefa extends StatefulWidget {
  @override
  _TelaAdicionarTarefaState createState() => _TelaAdicionarTarefaState();
}

class _TelaAdicionarTarefaState extends State<TelaAdicionarTarefa> {
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefa'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _tituloController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: _descricaoController,
              decoration: InputDecoration(
                labelText: 'Descrição',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String titulo = _tituloController.text;
                if (titulo.isNotEmpty) {
                  Navigator.pop(context, titulo);
                }
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tituloController.dispose();
    _descricaoController.dispose();
    super.dispose();
  }
}
