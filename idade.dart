import "dart:io";

void main(){
  print("Digite sua idade: ");

  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); // tem que colocar a ! porque a variável não pode dividir número vazio, converte o valor de entrada para INT

  if (idade >= 18) {
    print("Você pode dirigir diva(o)");
  }
  else if(idade == 1){
    print("Tá doido, nem pense nisso");
  }
  else{
    print("Você não pode dirigir divito");
  }
}