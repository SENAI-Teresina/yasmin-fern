import 'package:flutter/src/widgets/image.dart';

/// Classe que representa um produto no catálogo.
class Product {
  /// O nome do produto.
  final String name;

  /// O preço do produto.
  final double price;

  /// A descrição do produto.
  final String description;

  /// Construtor da classe `Product`.
  ///
  /// Todos os parâmetros são obrigatórios.
  const Product(Image image, {
    required this.name,
    required this.price,
    required this.description,
  });

  /// Método que converte uma instância de `Product` em um mapa.
  ///
  /// Útil para serialização de dados.
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'description': description,
    };
  }

  /// Método que cria uma instância de `Product` a partir de um mapa.
  ///
  /// Útil para desserialização de dados.
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      Image.asset('assets/.jpg'),
      name: map['name'],
      price: map['price'],
      description: map['description'],
    );
  }

  /// Método que retorna uma representação textual do objeto.
  @override
  String toString() {
    return 'Product(name: $name, price: $price, description: $description)';
  }
}
