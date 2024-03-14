class Aviao {
  String modelo;
  String fabricante;
  int numPassageiros;

  // Construtor
  Aviao(this.modelo, this.fabricante, this.numPassageiros);

  // Método para exibir detalhes do avião
  void exibirDetalhes() {
    print('Modelo: $modelo');
    print('Fabricante: $fabricante');
    print('Número de Passageiros: $numPassageiros');
  }
}

void main() {
  // Exemplo de uso da classe Aviao
  var aviao = Aviao('Boeing 737', 'Boeing', 200);

  // Exibindo detalhes do avião
  print('Detalhes do Avião:');
  aviao.exibirDetalhes();
}
