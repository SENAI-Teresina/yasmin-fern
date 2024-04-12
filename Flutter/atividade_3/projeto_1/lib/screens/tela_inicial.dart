import 'package:flutter/material.dart';
import 'package:projeto_1/models/product.dart'; // Importa a classe Product

class TelaInicial extends StatefulWidget {
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  // Lista de produtos para exibir na tela inicial
  final List<Product> products = [
    Product(
      Image.asset('images/relogio.png'),
      name: 'AirPods Pro',
      price: 1499.99 ,
      description: 'Fones de ouvido sem fio fabricados pela Apple, conhecidos por sua qualidade de som e cancelamento de ruído ativo. Eles são convenientes para programadores que desejam ouvir música ou participar de chamadas enquanto trabalham.',
    ),
    Product(
      Image.asset('images/ap.png'),
      name: 'Logitech MX Master 3',
      price: 749.99 ,
      description: ' Um mouse avançado projetado para produtividade e ergonomia. Possui um design confortável e botões personalizáveis, o que o torna uma escolha popular entre os programadores que passam longas horas trabalhando no computador.',
    ),
    Product(
      Image.asset('images/m.jpg'),
      name: 'Apple Watch Series 7',
      price: 4799.99 ,
      description: 'Embora seja mais conhecido como um dispositivo de saúde e fitness, o Apple Watch também oferece recursos úteis para desenvolvedores, como a capacidade de receber notificações de aplicativos, monitorar o tempo gasto em atividades relacionadas ao trabalho e até mesmo executar pequenos aplicativos diretamente no relógio. É uma escolha popular entre os programadores que desejam manter-se conectados e produtivos enquanto estão longe do computador.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Produtos'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('Preço: \$${products[index].price.toString()}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detalhes',
                arguments: products[index],
              );
            },
          );
        },
      ),
    );
  }
}
