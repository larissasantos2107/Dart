import 'dart:io';

// FUNÇÔES VOID

// void main(){
//   mostrar();
// }

// void mostrar(){
//   print("Olá seu nome é Larissa");
// }

// void main(){
//   cardapio();
// }

// void cardapio(){
//   print("Bem Vindo Diva(o)!");
//   print("Opções");
//   print("1 - Strogonoff");
//   print("2 - Cachorro Quente");
//   print("3 - Katsu Karê Rise");
//   print("4 - Comida Japononesa");
//   print("5 - Festival de massas!");
// }

// FUNÇÔES COM PARAMETRO MAS SEM RETORNO

// void main(){
//   soma(10,20);
// }

// void soma(int a, int b){
//   int valor = a + b;
//   print("$valor");
// }

// FUNÇÔES SIMPLES COM RETORNO

// void main(){
//   String? valor_definido = nome();
//   print("$valor_definido");
// }

// String nome(){
//   return "seu nome é LArissa";
// }

// FUNÇÔES SIMPLES COM RETORNO E PARÂMETRO

void main(){
  String valor_dafuncao = mostrar_nome("Larissa");
  print("$valor_dafuncao");
}

String mostrar_nome (String nome){
  return "Seu nome é $nome";
}