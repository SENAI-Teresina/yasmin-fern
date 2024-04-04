import 'package:flutter/material.dart';

void main() {
  runApp(ProductDetails());
}

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detalhes do Produto'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ProductLayout(
            productName: 'Coleira',
            productPrice: 'R\$ 64.90',
            productImage: 'imagens/2.jpg',
          ),
        ),
      ),
    );
  }
}

class ProductLayout extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  ProductLayout({
    required this.productName,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productImage,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0),
          Text(
            productName,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            productPrice,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
