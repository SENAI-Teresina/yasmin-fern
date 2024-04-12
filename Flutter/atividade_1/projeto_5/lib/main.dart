import 'package:flutter/material.dart';

void main() {
  runApp(AdList());
}

class AdList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Anúncios'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              AdImage(imagePath: 'imagens/1.jpg'),
              SizedBox(width: 10.0),
              AdImage(imagePath: 'imagens/2.jpg'),
              SizedBox(width: 10.0),
              AdImage(imagePath: 'imagens/3.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}

class AdImage extends StatelessWidget {
  final String imagePath;

  AdImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}
