import 'dart:io';

class Produto{
  String nome = "";
  double preco = 0.0;
  String? descricao; // atributos opcionais, podem ser nulos.

// Atributos obrigatorios precisam da palavra requerid.
// Atributos opcionais precisam apenas do "this".
// Para declarar atributos obrigatorios precisa ter {}

  Produto({required this.nome, required this.preco, this.descricao});
}

void main(){
  // Produtos com apenas atributos obrigatorios

  Produto CocaCola = Produto(nome: "Coca-Cola Zero", preco: 50);

 // Produto com todos os atributos (obrigatorio e opcional).

 Produto Pepsi = Produto(nome: "Pepsi Zero", preco: 50, descricao: "Copia mal feita da Coca-Cola");
 
}