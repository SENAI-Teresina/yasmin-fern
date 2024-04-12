import 'package:flutter/material.dart';

class TelaMaisOpcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mais Opções'),
      ),
      body: Center(
        child: Text(
          'Esta é a tela de Mais Opções.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
