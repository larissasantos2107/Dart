import 'dart:io';

void main(){

  double multa = 0;
  double valor = 0;
  double parcela = 0;

  print("Informe seu nome: ");

  String? nome = stdin.readLineSync();

  print("Informe a velocidade em que estava:");
  String? entrada = stdin.readLineSync();
  int velocidade = int.parse(entrada!);
  

  if (velocidade >= 0 && velocidade <= 60) {
    print("$nome você estava a $velocidade km/h, Sem infração");
  }else if(velocidade >= 61 && velocidade <= 80){
    print("$nome você estava a $velocidade km/h, Infração leve");
    multa = 140;
  }else if(velocidade >= 81 && velocidade <= 100){
    print("$nome você estava a $velocidade km/h. Infração média");
    multa = 260;
  }else if(velocidade > 100){
    print("$nome você estava a $velocidade km/h, Infração grave");
    multa = 500;
  }else{
    print("Digite uma velocidade valida");
  }

  print("Escolha a forma de pagamento da sua multa: \n 1 - Pagar a vista \n 2 - Parcelar em 2x \n 3 - Parcelar em 3x");

   String? entrada1 = stdin.readLineSync();
  int op = int.parse(entrada1!);

  switch (op){
    case 1:
    double desconto = multa * 0.1;
    valor = multa - desconto;
    print("O valor da sua multa é: R\$$multa \n Desconto: R\$$desconto \n Valor Total: R\$$valor");
    break;

    case 2:
    parcela = multa/2;
    print("Valor da multa: R\$$multa \n Parcelas: 2x de R\$$parcela \n Multa Parcelada.");
    break;

    case 3:
    parcela = multa/3;
    double juros = multa * 0.10;
    valor = multa + juros;
    print("Valor da multa: R\$$multa \n Parcelas: 3x de R\$$parcela \n Juros de (10%): R\$$juros \n Total: R\$$valor ");
    break;

    default:
    print("Opção invalida");
    break;
  }



}