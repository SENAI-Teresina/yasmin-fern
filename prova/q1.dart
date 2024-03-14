import 'dart:math';

class Circulo {
  double raio;
  String cor;

  Circulo(this.raio, this.cor);

  double calcularArea() {
    return pi * raio * raio;
  }

  double calcularPerimetro() {
    return 2 * pi * raio;
  }
}

void main() {
  var circulo = Circulo(5.0, 'vermelho');
  print('Área do círculo: ${circulo.calcularArea()}');
  print('Perímetro do círculo: ${circulo.calcularPerimetro()}');
}
