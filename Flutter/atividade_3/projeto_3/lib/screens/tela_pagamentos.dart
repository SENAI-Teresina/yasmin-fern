import 'package:flutter/material.dart';

class TelaPagamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamentos'),
      ),
      body: Center(
        child: Text(
          'Esta é a tela de pagamentos.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
