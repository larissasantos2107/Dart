import 'dart:io';

// ISEMPTY

// void main(){
//   print("Digite seu nome: ");

//   String? entrada = stdin.readLineSync()!;

//   while (entrada == null || entrada.trim().isEmpty) {
//     print("Existe dado nulo ou vazio, tente novamente");
//     entrada = stdin.readLineSync()!;
 
//   }
//   print("Seu nome é $entrada");
// }

// TRY/CATCH
// void main(){
//   try{
//     print("Digite um número");
//     int numero = int.parse(stdin.readLineSync()!);
//   }on FormatException{ // Verifica se a entrada é equivalente ao tipo de erro
//     print("Digite apenas números");
//   }
//   catch(e){
//     print("Seu erro foi $e");
//   }finally{
//     print("Encerrando programa");
//   }

// }

void main(){
  List<int> lista = [1,2,3];

  try{
    print(lista[5]);
  }on RangeError{
    print("Imprima somente valores que estão no index da lista");
  }
}