import 'dart:io';

void main() {
  double valorCompra = 0;

  while (true) {
    try {
      stdout.write("Informe o valor da compra: ");
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.trim().isEmpty) {
        print("O valor não pode ser vazio. Tente novamente.");
        continue;
      }

      valorCompra = double.parse(entrada);

      if (valorCompra <= 0) {
        print("O valor deve ser maior que zero. Tente novamente.");
        continue;
      }

      break;

    } on FormatException {
      print(" Entrada inválida! Digite apenas números (use ponto para decimais).");
    }
  }

  int formaPagamento = 0;

  while (true) {
    print("\nEscolha a forma de pagamento:");
    print("1 - Dinheiro");
    print("2 - Cartão de Débito");
    print("3 - Cartão de Crédito");
    print("4 - Pix");

    String? opcao = stdin.readLineSync();

    if (opcao == null || opcao.trim().isEmpty) {
      print("Digite uma opção válida.");
      continue;
    }

    try {
      formaPagamento = int.parse(opcao);

      if (formaPagamento < 1 || formaPagamento > 4) {
        print("Opção inválida. Escolha entre 1 e 4.");
        continue;
      }

      break; 

    } on FormatException {
      print("Entrada inválida! Digite apenas números.");
    }
  }

  String opcao = "";
  switch (formaPagamento) {
    case 1:
      opcao = "Dinheiro";
      break;
    case 2:
      opcao = "Cartão de Débito";
      break;
    case 3:
      opcao = "Cartão de Crédito";
      break;
    case 4:
      opcao = "Pix";
      break;
  }

  print("\nCompra no valor de R\$${valorCompra} realizada com sucesso!");
  print("Forma de pagamento escolhida: $opcao");
}
