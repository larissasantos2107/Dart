import 'dart:io';

class Animal{
  String nome;
  int idade;

  Animal ({required this.nome, required this.idade});

  void fazerSom(){
    print("Au Au");
  }

  @override // Utilizar Override, ´pois sempre quee for inicializado ou printado ele pega a última atualização dos dados
  String toString(){ // Função para ler os dados dos atributos
    return "O nome do seu cachorro é $nome, e a idade da $nome é $idade anos";
  }
}

class Cachorro extends Animal{
  Cachorro({required String nome, required int idade}):
  super(nome: nome, idade: idade);
}

class Gato extends Animal{
  Gato({required String nome, required int idade}):
  super(nome: nome, idade: idade);
  @override // Te da a possibilidade de reescrever uma função herdada
  void fazerSom() {
    print("Miau Miau"); 
  }
}

void main(){
  Cachorro Tea = Cachorro(nome: "Tea", idade: 2);
  Tea.fazerSom();
  print(Tea);
}