import 'package:flutter/material.dart';

void main() {
  runApp(CardLayout());
}

class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cartão Caixa'),
        ),
        body: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Caixa'),
                  subtitle: Text('Chico Bento'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.network(
                    'imagens/1.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
