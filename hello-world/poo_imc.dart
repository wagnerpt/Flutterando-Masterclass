import 'pessoa.dart';

void main(List<String> args) {
  var pessoa = Pessoa(
    nome: 'Wagner',
    peso: 110,
    altura: 1.75,
  );
  print(pessoa.calcularImc());

  Medico m = Medico(crm: 123, nome: 'joao', peso: 100, altura: 1.68);
  print(m.calcularImc());
}
