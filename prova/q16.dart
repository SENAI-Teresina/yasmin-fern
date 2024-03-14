class Celular {
  String marca;
  String modelo;
  String sistemaOperacional;

  Celular(this.marca, this.modelo, this.sistemaOperacional);

  void exibirDetalhes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Sistema Operacional: $sistemaOperacional');
  }
}

void main() {
  var celular = Celular('Samsung', 'Galaxy S20', 'Android');
  celular.exibirDetalhes();
}
