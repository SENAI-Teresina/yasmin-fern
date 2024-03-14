class Retangulo {
  double comprimento;
  double largura;
  String cor;

  Retangulo(this.comprimento, this.largura, this.cor);

  double calcularArea() {
    return comprimento * largura;
  }

  double calcularPerimetro() {
    return 2 * (comprimento + largura);
  }

  void exibirDetalhes() {
    print('Comprimento: $comprimento');
    print('Largura: $largura');
    print('Cor: $cor');
  }
}

class Quadrado extends Retangulo {
  Quadrado(double lado, String cor) : super(lado, lado, cor);

  double calcularDiagonal() {
    return comprimento * (2);
  }

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Diagonal: ${calcularDiagonal().toStringAsFixed(2)}');
  }
}

void main() {
  var quadrado = Quadrado(5, 'azul');
  quadrado.exibirDetalhes();
}
