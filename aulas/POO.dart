import 'dart:io';

// void main(){

//   Humano Larissa = Humano("Larissa Gonçalves Santos", "Fenino", 1.7);

//   Humano Deborah = Humano("Deborah Mancondes Ferrareze", "Feminino", 1.6); // Objeto

//   Humano Eloisa = Humano("Maria Eloisa Fotunato da Silva Reis", "Feminino", 1.7);

//   print(" A ${Larissa.nome} é linda \n A ${Deborah.nome} é linda \n A ${Eloisa.nome} é feia");
// }

// class Humano{ // Classe humano, boa prática ser letra maiuscúla

//   String nome = "";
//   String genero = "";
//   double altura = 0.0;

//   Humano(this.nome, this.genero, this.altura); // Construtor serve para inicalizar um objeto já com as informações, reduzindo o código.

// }

void main(){
  Carro Uno = Carro("Branco", "Firezinho 0.8", "Fiat", "Escada", 0);
  Uno.acelerar();
  Uno.acelerar();
  Uno.acelerar();
  Uno.acelerar();
  Uno.acelerar();
  Uno.acelerar();
  Uno.acelerar();

  print(Uno.velocidade);

}

class Carro{
  String cor = "";
  String modelo = "";
  String marca = "";
  String acessorio = "";
  double velocidade = 0;

  Carro(this.cor, this.modelo, this.marca, this.acessorio, this.velocidade);

  void acelerar(){
    velocidade += 10;
  }
}