import 'package:flutter/material.dart';

void main() {
  runApp(NavigationMenu());
}

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu de Navegação'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Página Inicial'),
                onTap: () {
                  // Implemente ação ao clicar na opção
                  print('Página Inicial clicada!');
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Perfil'),
                onTap: () {
                  // Implemente ação ao clicar na opção
                  print('Perfil clicado!');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configurações'),
                onTap: () {
                  // Implemente ação ao clicar na opção
                  print('Configurações clicadas!');
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Conteúdo da Página'),
        ),
      ),
    );
  }
}
