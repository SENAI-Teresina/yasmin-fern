class ProdutoEletronico {
  String nome;
  double preço;
  int garantia; // em meses

  // Construtor
  ProdutoEletronico(this.nome, this.preço, this.garantia);

  // Método para exibir detalhes do produto eletrônico
  void exibirDetalhes() {
    print('Nome: $nome');
    print('Preço: R\$ $preço');
    print('Garantia: $garantia meses');
  }
}

void main() {
  // Exemplo de uso da classe ProdutoEletronico
  var produto = ProdutoEletronico('Smartphone', 1500.00, 12);

  // Exibindo detalhes do produto eletrônico
  print('Detalhes do Produto Eletrônico:');
  produto.exibirDetalhes();
}
