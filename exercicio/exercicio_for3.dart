import 'dart:io';

// for 
void main(){
  int contador = 1;
  List<String> cardapio = [
    "Hambúrguer - R\$12.00",
    "Batata Frita - R\$8.00",
    "Refrigerante - R\$5.00",
    "Suco - R\$6.00", 
    "MilkShake - R\$10.00"];

  cardapio.forEach((String i){
    print("$contador - $i");
    contador++;
  });
}