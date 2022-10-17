class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  double calcularImc() {
    return peso / (altura * altura);
  }
}

class Medico extends Pessoa {
  final int crm;
  String cidade = 'São paulo';

  Medico({
    required this.crm,
    required super.nome,
    required super.peso,
    required super.altura,
  });

  /* Outra maneira chamado o metodo da classe pai
  Medico({
    required this.crm,
    required this.cidade,
    required String nome,
    required double peso,
    required double altura,
  }) : super(nome: nome, peso: peso, altura: altura);
  */
}
