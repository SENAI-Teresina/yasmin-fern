class Circulo {
  double raio;
  String cor;

  Circulo(this.raio, this.cor);

  double calcularArea() {
    return 3.14159 * raio * raio;
  }

  double calcularPerimetro() {
    return 2 * 3.14159 * raio;
  }

  void exibirDetalhes() {
    print('Raio: $raio');
    print('Cor da borda: $cor');
  }
}

class CirculoColorido extends Circulo {
  String corPreenchimento;

  CirculoColorido(double raio, String cor, this.corPreenchimento) : super(raio, cor);

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Cor de preenchimento: $corPreenchimento');
  }
}

void main() {
  var circuloColorido = CirculoColorido(5, 'vermelho', 'amarelo');
  circuloColorido.exibirDetalhes();
}
