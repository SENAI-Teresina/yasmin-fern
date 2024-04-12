import 'package:flutter/material.dart';

class TelaExtrato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extrato'),
      ),
      body: Center(
        child: Text(
          'Esta é a tela de extrato.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
