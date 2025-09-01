import 'dart:io';

class Animal{
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});

    void falar(){
    print("Au Au");
  }

  @override 
  String toString(){ 
    return "O nome do seu animal é $nome, e a idade da(o) $nome é $idade anos";
  }
}

class Cachorro extends Animal{
  Cachorro({required String nome, required int idade}):
  super(nome: nome, idade: idade);
  
}

class Gato extends Animal{
  Gato({required String nome, required int idade}):
  super(nome: nome, idade: idade);
  @override 
  void falar() {
    print("Miau Miau"); 
  }
}

class Papagaio extends Animal{
  Papagaio({required String nome, required int idade}):
  super(nome: nome, idade: idade);
  @override 
  void falar() {
    print("Oi divinissima"); 
  }
}

void main(){
  Cachorro Tea = Cachorro(nome: "Tea", idade: 2);
  print(Tea);
  Tea.falar();

  print("\n");

  Gato Cruel = Gato(nome: "Cruel", idade: 2);
  print(Cruel);
  Cruel.falar();

  print("\n");

  Papagaio Loro = Papagaio(nome: "Loro", idade: 2);
  print(Loro);
  Loro.falar();
}

