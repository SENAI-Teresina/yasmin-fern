abstract class VeiculoTerrestre {
  String marca;
  String modelo;
  int anoFabricacao;

  // Método abstrato para exibir detalhes do veículo
  void exibirDetalhes();
}
class Carro extends VeiculoTerrestre {
  // Construtor
  Carro(this.marca, this.modelo, this.anoFabricacao);

  // Implementação do método para exibir detalhes do veículo
  @override
  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de Fabricação: $anoFabricacao');
  }
}
