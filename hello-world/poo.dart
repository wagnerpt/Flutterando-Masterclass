class Carro {
  late int qtdPortas =
      4; // garante que o parametro será inicializado antes de ser utilizado
  String nome = 'Ka';
  String marca = 'Ford';

  Carro(int qtdPortas, String nome, String marca) {
    this.qtdPortas = qtdPortas;
    this.nome = nome;
    this.marca = marca;
  }

  String marcaNome() {
    return '$marca $nome';
  }
}

void main(List<String> args) {
  final carro = Carro(4, 'Corsa', 'GM');
  print(carro.nome);
  print(carro.marcaNome());
}
