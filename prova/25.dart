class Cômodo {
  String nome;
  double área;
  double alturaParede;

  // Construtor
  Cômodo(this.nome, this.área, this.alturaParede);

  // Método para calcular a área das paredes do cômodo
  double calcularÁreaParedes() {
    return 2 * (área * alturaParede);
  }

  // Método para exibir detalhes do cômodo
  void exibirDetalhes() {
    print('Nome do Cômodo: $nome');
    print('Área do Cômodo: $área m²');
    print('Altura das Paredes: $alturaParede m');
    print('Área das Paredes: ${calcularÁreaParedes()} m²');
  }
}

void main() {
  // Exemplo de uso da classe Cômodo
  var sala = Cômodo('Sala de Estar', 25.0, 3.0);

  // Exibindo detalhes do cômodo
  print('Detalhes do Cômodo:');
  sala.exibirDetalhes();
}
