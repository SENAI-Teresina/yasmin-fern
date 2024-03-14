class Produto {
  String nome;
  double preco;
  int quantidadeEstoque;

  Produto(this.nome, this.preco, this.quantidadeEstoque);

  void atualizarEstoque(int quantidade) {
    quantidadeEstoque += quantidade;
    print('Estoque do produto $nome atualizado para $quantidadeEstoque unidades');
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Quantidade em estoque: $quantidadeEstoque unidades');
  }
}

void main() {
  var produto = Produto('Camiseta', 29.99, 100);
  produto.atualizarEstoque(-50);
  produto.exibirDetalhes();
}
