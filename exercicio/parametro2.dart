import 'dart:io';

void main(){
  print("Informe sua idade: ");

  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!);

  if (idade >= 18) {
    print("True");
  }else{
    print("False");
  }

  print("Sua idade é ${ehMaiorIdade(idade)} anos");
}

int ehMaiorIdade(int idade) {
  return idade;
}