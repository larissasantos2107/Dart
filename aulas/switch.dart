import 'dart:io';

void main(){
  print("Digite sua nota: ");

  String? entrada = stdin.readLineSync();
  int nota = int.parse(entrada!);

  switch(nota){
    case 1:
      print("Sua nota é $nota");
      break;
    
    case 2:
      print("Sua nota é $nota, tá melhorando");
      break;

      default:
      print("Digite uma nota válida");
      break;
  }
}