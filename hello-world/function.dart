import 'dart:io';

void main(List<String> args) {
  print('Functions');
  minhaFuncao();
}

minhaFuncao() {
  print(pegarNome());

  //Criar imc
  double peso = pegarPeso();
  double altura = pegarAltura();
  double imc = calcularImc(peso: peso, altura: altura);
  print(imc);
  bool isFat = imc > 25;
  bool isLean = imc <= 25;
  print(isFat);
  print(isLean);
  if (imc > 25) {
    print("você está gordo");
  } else if (imc < 18) {
    print("você está magro");
  } else {
    print("você está normal");
  }
}

String pegarNome() {
  print('Digite seu nome');
  final String? nome = stdin.readLineSync();
  if (nome == null) return 'Anônimo';
  return nome;
}

///Função para obter o peso em formato numerico via Console
double pegarPeso() {
  print('Digite seu peso');
  final String? sPeso = stdin.readLineSync();
  if (sPeso == null) {
    return 0.0;
  }
  return double.parse(sPeso);
}

double pegarAltura() {
  print('Digite sua altura');
  final String? sAltura = stdin.readLineSync();
  if (sAltura == null) {
    return 0.0;
  }
  return double.parse(sAltura);
}

double calcularImc({required double peso, required double altura}) {
  return peso / (altura * altura);
}
