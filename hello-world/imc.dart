import 'dart:io';

main() {
  print('Digite seu nome');
  final String? nome = stdin.readLineSync();
  print(nome);
  print('Digite seu peso');
  final String? sPeso = stdin.readLineSync();
  print('Digite sua altura');
  final String? sAltura = stdin.readLineSync();

  //Criar imc
  double peso = double.parse(sPeso!);
  double altura = double.parse(sAltura!);
  double imc = peso / (altura * altura);
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
