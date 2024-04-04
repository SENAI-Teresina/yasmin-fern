import 'package:flutter/material.dart';

void main() {
  runApp(ProductList());
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Produtos'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductItem(
                imagePath: 'imagens/1.jpg',
                productName: 'Shampoo',
              ),
              SizedBox(height: 10.0),
              ProductItem(
                imagePath: 'imagens/2.jpg',
                productName: 'Coleira',
              ),
              SizedBox(height: 10.0),
              ProductItem(
                imagePath: 'imagens/3.jpg',
                productName: 'Roupa',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String productName;

  ProductItem({required this.imagePath, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 5.0),
        Text(
          productName,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
