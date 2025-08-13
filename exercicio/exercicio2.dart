import 'dart:io';

// if, else if e else

void main() {
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite seus três últimos salários:");

  String? entrada = stdin.readLineSync();
  double salario1 = double.parse(entrada!);

  String? entrada1 = stdin.readLineSync();
  double salario2 = double.parse(entrada1!);

  String? entrada2 = stdin.readLineSync();
  double salario3 = double.parse(entrada2!);

  double soma = salario1 + salario2 + salario3;
  double media = soma / 3;

  print("Soma dos salários: $soma");
  print("Média salarial: $media");

  if (media < 0) {
    print("$nome, seu salário está NEGATIVO... como você ainda tá vivo? ");
  } else if (media >= 0 && media < 2000) {
    print("$nome, você está precisando de ajuda, vamos procurar um emprego ");
  } else if (media >= 2000 && media < 6000) {
    print("$nome, fome não passa, mas poderia pensar em outro emprego né ");
  } else {
    print("$nome, seu salário é bom, não seja demitido ");
  }
}
