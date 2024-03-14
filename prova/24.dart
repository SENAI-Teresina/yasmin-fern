class Bicicleta {
  String marca;
  String modelo;
  int numeroMarchas;

  // Construtor
  Bicicleta(this.marca, this.modelo, this.numeroMarchas);

  // Método para exibir detalhes da bicicleta
  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Número de Marchas: $numeroMarchas');
  }
}

void main() {
  // Exemplo de uso da classe Bicicleta
  var bicicleta = Bicicleta('Caloi', 'Explorer', 21);

  // Exibindo detalhes da bicicleta
  print('Detalhes da Bicicleta:');
  bicicleta.exibirDetalhes();
}
