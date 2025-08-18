import 'dart:io';

void main(){
  print("Digite seu nome completo: ");

  String? nome = stdin.readLineSync()!;

  while (nome == null || nome.trim().isEmpty) {
    print("Existe dado nulo ou vazio, tente novamente");
    nome = stdin.readLineSync()!;
 
  }
  print("Seu nome é $nome");
}