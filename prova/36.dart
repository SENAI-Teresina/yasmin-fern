// Interface VeiculoTerrestre
abstract class VeiculoTerrestre {
  String marca;
  String modelo;
  int anoFabricacao;

  // Método abstrato para exibir detalhes do veículo
  void exibirDetalhes();
}

// Classe Caminhao que implementa a interface VeiculoTerrestre
class Caminhao implements VeiculoTerrestre {
  String marca;
  String modelo;
  int anoFabricacao;
  double capacidadeCarga; // em toneladas
  String tipoCombustivel;

  // Construtor
  Caminhao(this.marca, this.modelo, this.anoFabricacao, this.capacidadeCarga, this.tipoCombustivel);

  // Implementação do método para exibir detalhes do caminhão
  @override
  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de Fabricação: $anoFabricacao');
    print('Capacidade de Carga: $capacidadeCarga toneladas');
    print('Tipo de Combustível: $tipoCombustivel');
  }
}

void main() {
  // Exemplo de uso da classe Caminhao
  var caminhao = Caminhao('Scania', 'R450', 2020, 30, 'Diesel');

  // Exibindo detalhes do caminhão
  print('Detalhes do Caminhão:');
  caminhao.exibirDetalhes();
}
