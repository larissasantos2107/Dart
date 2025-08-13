import 'dart:io';

// FOR

void main(){

    print("Digite o valor da compra: ");

    String? entrada = stdin.readLineSync();
    double valor = double.parse(entrada!);

    print("Digite a quantidade de parcelas: ");
    
    String? entrada2 = stdin.readLineSync();
    double parcelas = double.parse(entrada2!);

    double parcela = valor/parcelas;

    for (var i = 1; i <= parcelas; i++) {
      print("Parcelas $i: R\$$parcela");
    }




}

