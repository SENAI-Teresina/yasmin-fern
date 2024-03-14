class Triangulo {
  double lado1;
  double lado2;
  double lado3;

  Triangulo(this.lado1, this.lado2, this.lado3);

  bool ehTriangulo() {
    return lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1;
  }

  double calcularArea() {
    double s = (lado1 + lado2 + lado3) / 2;
    return (s * (s - lado1) * (s - lado2) * (s - lado3));
  }
}

void main() {
  var triangulo = Triangulo(3, 4, 5);
  if (triangulo.ehTriangulo()) {
    print('É um triângulo.');
    print('Área: ${triangulo.calcularArea()}');
  } else {
    print('Não é um triângulo.');
  }
}
