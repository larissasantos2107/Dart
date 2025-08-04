import 'dart:io';

void main() {

  int desconto = 0;

  print("===================== Bem - Vindo ao Super Mercado Divas =====================\n");

  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  print("Informe seu CPF: ");
  String? entradaCpf = stdin.readLineSync();
  int cpf = int.parse(entradaCpf!);

  List<String> produtos = [
    "Leite",
    "Sorvete",
    "Morango",
    "Melão",
    "Bolacha Recheada",
    "Veja",
    "Picanha",
    "Batata",
    "Coca-Cola Zero",
    "Batata Chips"
  ];

  print("\nEsses são os produtos disponíveis no Super Mercado Divas:\n");
  for (var item in produtos) {
    print("- $item");
  }

  String? opcao;
  String produtosEscolhidos = "";
  double total = 0;

  do {
    print("\nDigite o nome do produto que deseja adicionar:");
    String? nomeProduto = stdin.readLineSync();

    print("Digite o valor do produto:");
    String? entradaValor = stdin.readLineSync();
    double valor = double.parse(entradaValor!);

    produtosEscolhidos += "- $nomeProduto: R\$ ${valor.toStringAsFixed(2)}\n";
    total += valor;

    print("Deseja adicionar mais itens? (Sim/Não)");
    opcao = stdin.readLineSync();
  } while (opcao != "Nao");

  print("\n========== RESUMO DA COMPRA ==========");
  print("Nome: $nome");
  print("CPF: $cpf");
  print("Produtos escolhidos:\n$produtosEscolhidos");
  print("Total da compra: R\$ ${total.toStringAsFixed(2)}");
  print("Obrigado por comprar no Super Mercado Divas");

  print("Escolha a forma de pagamento \n 1 - Á Vista (Com 10% de Desconto) \n 2 - Parcelado no Cartão (Com 10% de Juros)\n 3 - Fiado (Com 15% a mais para pagar na próxima compra)");

  String? opp = stdin.readLineSync();
  int op = int.parse(opp!);

  do{
    switch (op){
    case 1:
    total = total - total* 0.1;
    print("O valor da sua Compra com desconto é: R\$$total");
    break;

    case 2:
    total = total + total*0.1;
    print("O valor da sua compra com desconto é: R\$$total");
    break;

    case 3:
    total = total + total*0.15;
    print("O valor da sua compra com desconto é: R\$$total");
    break;

    default:
    print("Opção invalida");
    break;
  }
  }while(op == null);
}


