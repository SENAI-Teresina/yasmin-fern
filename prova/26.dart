class Moto {
  String marca;
  String modelo;
  int cilindrada;

  // Construtor
  Moto(this.marca, this.modelo, this.cilindrada);

  // Método para exibir detalhes da moto
  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Cilindrada: $cilindrada cc');
  }
}

void main() {
  // Exemplo de uso da classe Moto
  var moto = Moto('Honda', 'CBR 600RR', 600);

  // Exibindo detalhes da moto
  print('Detalhes da Moto:');
  moto.exibirDetalhes();
}
