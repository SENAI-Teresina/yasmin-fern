import 'package:flutter/material.dart';

void main() {
  runApp(ButtonRow());
}

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botões'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ButtonLayout(),
        ),
      ),
    );
  }
}

class ButtonLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Botão 1'),
        ),
        SizedBox(width: 10.0),
        ElevatedButton(
          onPressed: () {},
          child: Text('Botão 2'),
        ),
        SizedBox(width: 10.0),
        ElevatedButton(
          onPressed: () {},
          child: Text('Botão 3'),
        ),
      ],
    );
  }
}
