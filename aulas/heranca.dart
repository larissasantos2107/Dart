import 'dart:io';

class Veiculo{ // SuperClass ou Classe mãe
  String nome = ""; // Variavél obrigatorio não precisa inicializar 
  String modelo = "";
  int? qtd_rodas; // Variavél opcional pecisa ter ?

  Veiculo({required this.nome, required this.modelo, this.qtd_rodas});

}

class Carro extends Veiculo{

  int? qtd_rodas;

  Carro({required String nome, required String modelo, int? qtd_rodas}):
  super(nome: nome, modelo: modelo, qtd_rodas: qtd_rodas );
  
}

class Moto extends Veiculo{

  int? qtd_rodas;


  Moto({required String nome, required String modelo, int? qtd_rodas}):
  super(nome: nome, modelo: modelo, qtd_rodas: qtd_rodas);
}

void main(){
  Carro Civic = Carro(nome: "Civic", modelo: "G10", qtd_rodas: 4);
  Moto Ninja = Moto(nome: "Ninja" , modelo: "Ninja ZX-48");
}