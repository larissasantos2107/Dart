import 'dart:io';

class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void exibir() {
    print("Nome: $nome, Idade: $idade");
  }
}

class Cachorro extends Animal {
  String? raca;

  Cachorro(String nome, int idade, {this.raca}) : super(nome, idade);

  void fazerSom() {
    print("Au au!");
  }
}

class Gato extends Animal {
  String? cor;

  Gato(String nome, int idade, {this.cor}) : super(nome, idade);

  void fazerSom() {
    print("Miau!");
  }
}

void main() {
  var cachorro = Cachorro("Tea", 4, raca: "shih tzu");
  var gato = Gato("Cruel", 2, cor: "Laranja");

print("Cachorro:");
  cachorro.exibir();
  print("Raça: ${cachorro.raca}");
  cachorro.fazerSom();

print("\n");

print("Gato:");
  gato.exibir();
  print("Cor: ${gato.cor}");
  gato.fazerSom();
}
