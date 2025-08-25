import 'dart:io';

void main(){
  Produto Gloss = Produto("Lipy Bunny", 50, 30);
  Gloss.subtrair_estoque();
}

class Produto{
  String nome = "";
  double preco = 0.0;
  int estoque = 0;

  Produto(this.nome, this.preco, this.estoque);

  void subtrair_estoque(){
    if (estoque > 0) {
      estoque -= 1;
    if (estoque == 0){
      print("Estoque esgotado, sem $nome");
    }else{
      print("Estoque restante: $nome: $estoque");
    }    
    }else{
      print("Não há mais $nome no estoque");
    }

  }
}

