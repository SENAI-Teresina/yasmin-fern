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
}

void main() {
  var retangulo = Retangulo(5.0, 3.0, 'azul');
  print('Área do retângulo: ${retangulo.calcularArea()}');
  print('Perímetro do retângulo: ${retangulo.calcularPerimetro()}');
}
