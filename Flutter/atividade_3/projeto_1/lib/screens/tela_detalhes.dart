import 'package:flutter/material.dart';
import 'package:projeto_1/models/product.dart'; // Importa a classe Product

class TelaDetalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtém o produto passado como argumento
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/relogio.png'),
            Text(
              'Nome: ${product.name}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text('Preço: \$${product.price.toString()}'),
            SizedBox(height: 10.0),
            Text('Descrição: ${product.description}'),
          ],
        ),
      ),
    );
  }
}
