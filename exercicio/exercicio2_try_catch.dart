import 'dart:io';

void main(){
  
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty) {
    print("Existe dado nulo ou vazio, insira novamente");
    nome = stdin.readLineSync();
   
  } 
  print("Parabéns, $nome");
}