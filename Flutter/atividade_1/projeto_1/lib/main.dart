import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perfil'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ProfileLayout(),
        ),
      ),
    );
  }
}

class ProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('imagens/usuario.png'), // Substitua pelo caminho da imagem
        ),
        SizedBox(height: 20.0),
        Text(
          'Nome do Usuário',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
