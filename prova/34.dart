abstract class FiguraGeometrica {
  // Método abstrato para calcular a área da figura
  double calcularArea();

  // Método abstrato para calcular o perímetro da figura
  double calcularPerimetro();
}

class Trapezio implements FiguraGeometrica {
  double baseMaior;
  double baseMenor;
  double altura;
  String cor;

  // Construtor
  Trapezio(this.baseMaior, this.baseMenor, this.altura, this.cor);

  // Implementação do método para calcular a área do trapézio
  @override
  double calcularArea() {
    return ((baseMaior + baseMenor) * altura) / 2;
  }

  // Implementação do método para calcular o perímetro do trapézio
  @override
  double calcularPerimetro() {
    return baseMaior + baseMenor + 2 * (altura * (baseMaior - baseMenor) / 2).abs();
  }

  // Método para exibir detalhes do trapézio
  void exibirDetalhes() {
    print('Base Maior: $baseMaior');
    print('Base Menor: $baseMenor');
    print('Altura: $altura');
    print('Cor: $cor');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }
}

void main() {
  // Exemplo de uso da classe Trapezio
  var trapezio = Trapezio(8, 5, 4, 'Azul');

  // Exibindo detalhes do trapézio
  print('Detalhes do Trapézio:');
  trapezio.exibirDetalhes();
}
