import 'package:flutter/material.dart';

class TelaTransacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transações'),
      ),
      body: Center(
        child: Text(
          'Esta é a tela de transações.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
