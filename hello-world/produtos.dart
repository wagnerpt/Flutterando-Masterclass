import 'dart:io';

void main(List<String> args) {
  //adicionar produto
  //imprimir
  //sair

  final produtos = [];
  var rodando = true;

  while (rodando) {
    print("\x1B[2J\x1B[0;0H");
    print('1-Adicionar, 2-Imprimir, 0-Sair');
    var input = stdin.readLineSync();
    if (input == '0') {
      rodando = false;
    } else if (input == '1') {
      var produto = stdin.readLineSync();
      produtos.add(produto);
    } else if (input == '2') {
      for (var i = 0; i < produtos.length; i++) {
        print(produtos[i]);
      }
      stdin.readLineSync();
    }
  }
}
