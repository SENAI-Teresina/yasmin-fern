abstract class FiguraGeometrica {
  // Método abstrato para calcular a área da figura
  double calcularArea();

  // Método abstrato para calcular o perímetro da figura
  double calcularPerimetro();
}

class Circulo implements FiguraGeometrica {
  double raio;

  // Construtor
  Circulo(this.raio);

  // Implementação do método para calcular a área do círculo
  @override
  double calcularArea() {
    return 3.14 * raio * raio;
  }

  // Implementação do método para calcular o perímetro do círculo
  @override
  double calcularPerimetro() {
    return 2 * 3.14 * raio;
  }
}

class Retangulo implements FiguraGeometrica {
  double comprimento;
  double largura;

  // Construtor
  Retangulo(this.comprimento, this.largura);

  // Implementação do método para calcular a área do retângulo
  @override
  double calcularArea() {
    return comprimento * largura;
  }

  // Implementação do método para calcular o perímetro do retângulo
  @override
  double calcularPerimetro() {
    return 2 * (comprimento + largura);
  }
}

void main() {
  // Exemplo de uso da classe Circulo
  var circulo = Circulo(5);
  print('Área do círculo: ${circulo.calcularArea()}');
  print('Perímetro do círculo: ${circulo.calcularPerimetro()}');

  // Exemplo de uso da classe Retangulo
  var retangulo = Retangulo(4, 6);
  print('Área do retângulo: ${retangulo.calcularArea()}');
  print('Perímetro do retângulo: ${retangulo.calcularPerimetro()}');
}
