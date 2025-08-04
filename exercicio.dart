import 'dart:io';

void main(){

  print("digite a primeira nota: ");

  String? entrada1 = stdin.readLineSync();
  int nota1 = int.parse(entrada1!);

  String? entrada2 = stdin.readLineSync();
  int nota2 = int.parse(entrada2!);

  String? entrada3 = stdin.readLineSync();
  int nota3 = int.parse(entrada3!);

  String? entrada4 = stdin.readLineSync();
  int nota4 = int.parse(entrada4!);
  
  String? entrada5 = stdin.readLineSync();
  int nota5 = int.parse(entrada5!);

int soma = nota1 + nota2 + nota3 + nota4 + nota5;

double media = soma / 5;

if (media >= 5) {
  print("Aluno aprovado ✔");
}
else{
  print("Reprovado❌");
}

  
}