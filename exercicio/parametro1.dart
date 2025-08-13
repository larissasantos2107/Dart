import 'dart:io';

void main(){
  print("Informe o valor do produto: ");
   String? entrada = stdin.readLineSync();
   double valor = double.parse(entrada!);

  print("Informe o valor do produto: ");
   String? entrada2 = stdin.readLineSync();
   double desconto = double.parse(entrada2!);


  double precoFinal = calcularDesconto(valor, desconto);
  print("O preço final do produto com desconto é: R\$ $precoFinal");
}

double calcularDesconto(double preco, double desconto) {
  return preco - (preco * (desconto / 100));
}