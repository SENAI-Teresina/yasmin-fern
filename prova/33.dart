abstract class FiguraGeometrica {
  // Método abstrato para calcular a área da figura
  double calcularArea();

  // Método abstrato para calcular o perímetro da figura
  double calcularPerimetro();
}

class LosangoColorido implements FiguraGeometrica {
  double diagonalMaior;
  double diagonalMenor;
  String corPreenchimento;

  // Construtor
  LosangoColorido(this.diagonalMaior, this.diagonalMenor, this.corPreenchimento);

  // Implementação do método para calcular a área do losango
  @override
  double calcularArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }

  // Implementação do método para calcular o perímetro do losango
  @override
  double calcularPerimetro() {
    return 4 * (diagonalMaior + diagonalMenor) / 2;
  }

  // Método para exibir detalhes do losango colorido
  void exibirDetalhes() {
    print('Diagonal Maior: $diagonalMaior');
    print('Diagonal Menor: $diagonalMenor');
    print('Cor de Preenchimento: $corPreenchimento');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }
}

void main() {
  // Exemplo de uso da classe LosangoColorido
  var losango = LosangoColorido(8, 6, 'Amarelo');

  // Exibindo detalhes do losango colorido
  print('Detalhes do Losango Colorido:');
  losango.exibirDetalhes();
}
