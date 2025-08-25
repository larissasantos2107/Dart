import 'dart:io';

void main() {
  // Lista de produtos: [nome, preço, quantidade em estoque]
  List<Map<String, dynamic>> produtos = [
    {"nome": "Arroz", "preco": 20.0, "estoque": 10},
    {"nome": "Feijão", "preco": 12.0, "estoque": 15},
    {"nome": "Macarrão", "preco": 8.0, "estoque": 20},
  ];

  String continuar = "S";

  while (continuar.toUpperCase() == "S") {
    List<Map<String, dynamic>> carrinho = [];

    print("=== Bem-vindo ao Mercadinho da Lah Queen ===");

    // Cadastro do cliente com validação usando try/catch
    String nome = "";
    do {
      stdout.write("Digite seu nome: ");
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.trim().isEmpty) {
        print("❌ Nome inválido! Não pode estar vazio.");
      } else {
        try {
          int.parse(entrada); // se for número, erro
          print("❌ Nome inválido! Não pode conter números.");
        } catch (e) {
          nome = entrada;
        }
      }
    } while (nome.isEmpty);

    String documento = "";
    do {
      stdout.write("Digite seu documento (apenas números): ");
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.trim().isEmpty) {
        print("❌ Documento inválido! Não pode estar vazio.");
      } else {
        try {
          int.parse(entrada); // se der certo, é válido
          documento = entrada;
        } catch (e) {
          print("❌ Documento inválido! Deve conter apenas números.");
        }
      }
    } while (documento.isEmpty);

    int opcao = -1;
    do {
      print("\n=== MENU ===");
      print("1 - Ver lista de produtos e comprar");
      print("2 - Ver carrinho");
      print("0 - Finalizar compra");

      stdout.write("Escolha uma opção: ");
      String? escolha = stdin.readLineSync();
      try {
        opcao = int.parse(escolha!);
      } catch (e) {
        print("❌ Opção inválida!");
        continue;
      }

      if (opcao == 1) {
        print("\n=== Lista de Produtos ===");
        for (int i = 0; i < produtos.length; i++) {
          print("${i + 1} - ${produtos[i]["nome"]} | R\$${produtos[i]["preco"]} | Estoque: ${produtos[i]["estoque"]}");
        }

        stdout.write("Escolha o produto pelo número (0 para voltar): ");
        String? escolhaProduto = stdin.readLineSync();
        int prodIndex = 0;

        try {
          prodIndex = int.parse(escolhaProduto!);
        } catch (e) {
          print("❌ Opção inválida!");
          continue;
        }

        if (prodIndex > 0 && prodIndex <= produtos.length) {
          int qtd = 0;
          bool qtdValida = false;

          while (!qtdValida) {
            stdout.write("Informe a quantidade: ");
            String? qtdStr = stdin.readLineSync();

            try {
              qtd = int.parse(qtdStr!);
              if (qtd <= 0) {
                print("❌ Quantidade inválida! Deve ser maior que zero.");
              } else if (qtd > produtos[prodIndex - 1]["estoque"]) {
                print("❌ Estoque insuficiente! Digite uma quantidade válida.");
              } else {
                qtdValida = true; // quantidade correta
              }
            } catch (e) {
              print("❌ Quantidade inválida! Digite apenas números.");
            }
          }

          produtos[prodIndex - 1]["estoque"] -= qtd;
          carrinho.add({
            "nome": produtos[prodIndex - 1]["nome"],
            "preco": produtos[prodIndex - 1]["preco"],
            "qtd": qtd
          });
          print("✅ Produto adicionado ao carrinho!");
        }
      } else if (opcao == 2) {
        if (carrinho.isEmpty) {
          print("\nCarrinho vazio!");
        } else {
          print("\n=== Carrinho ===");
          for (int i = 0; i < carrinho.length; i++) {
            print("${i + 1} - ${carrinho[i]["nome"]} | ${carrinho[i]["qtd"]}x R\$${carrinho[i]["preco"]}");
          }

          stdout.write("Deseja remover algum item? (S/N): ");
          String remover = stdin.readLineSync() ?? "N";
          if (remover.toUpperCase() == "S") {
            stdout.write("Digite o número do item para remover: ");
            String? remStr = stdin.readLineSync();
            try {
              int rem = int.parse(remStr!);
              if (rem > 0 && rem <= carrinho.length) {
                // devolve estoque
                for (int i = 0; i < produtos.length; i++) {
                  if (produtos[i]["nome"] == carrinho[rem - 1]["nome"]) {
                    produtos[i]["estoque"] += carrinho[rem - 1]["qtd"];
                  }
                }
                carrinho.removeAt(rem - 1);
                print("✅ Produto removido do carrinho!");
              } else {
                print("❌ Item inválido!");
              }
            } catch (e) {
              print("❌ Entrada inválida!");
            }
          }
        }
      }
    } while (opcao != 0);

    if (carrinho.isEmpty) {
      print("\nCarrinho vazio. Compra cancelada.");
      return;
    }

    // Calcular subtotal
    double subtotal = 0;
    carrinho.forEach((item) {
      subtotal += item["preco"] * item["qtd"];
    });

    print("\nSubtotal: R\$${subtotal}");

    // Perguntar aniversário
    stdout.write("\nDigite o dia do seu aniversário (1-31): ");
    int diaAniversario = int.parse(stdin.readLineSync() ?? "0");

    stdout.write("Digite o mês do seu aniversário (1-12): ");
    int mesAniversario = int.parse(stdin.readLineSync() ?? "0");

    DateTime hoje = DateTime.now();
    bool descontoAniversario = false;
    if (diaAniversario == hoje.day && mesAniversario == hoje.month) {
      print("🎉 Feliz Aniversário! Você ganhou 10% de desconto!");
      subtotal *= 0.9;
      descontoAniversario = true;
    }

    // Escolha de pagamento
    print("\nFormas de pagamento:");
    print("1 - Dinheiro (10% desconto)");
    print("2 - Débito (sem desconto)");
    print("3 - Crédito (10% de juros)");
    print("4 - PIX (5% desconto)");

    stdout.write("Escolha a forma de pagamento: ");
    String? pgStr = stdin.readLineSync();
    int pg = int.parse(pgStr ?? "0");

    double total = subtotal;
    switch (pg) {
      case 1:
        total *= 0.9;
        break;
      case 2:
        total = subtotal;
        break;
      case 3:
        total *= 1.1;
        break;
      case 4:
        total *= 0.95;
        break;
      default:
        print("Opção inválida, mantendo valor original.");
    }

    double troco = 0;
    if (pg == 1) {
      double valorEntregue = 0;
      bool valorValido = false;

      while (!valorValido) {
        stdout.write("Digite o valor entregue em dinheiro: ");
        String? valorEntregueStr = stdin.readLineSync();

        if (valorEntregueStr == null || valorEntregueStr.trim().isEmpty) {
          print("❌ Valor inválido! Não pode estar vazio.");
          continue;
        }

        try {
          valorEntregue = double.parse(valorEntregueStr);
          if (valorEntregue < total) {
            print("❌ Valor insuficiente! Digite novamente.");
          } else {
            troco = valorEntregue - total;
            valorValido = true;
          }
        } catch (e) {
          print("❌ Entrada inválida! Digite apenas números.");
        }
      }
    }

    // Recibo
    print("\n=== RECIBO ===");
    print("Cliente: $nome | Documento: $documento");
    carrinho.forEach((item) {
      print("${item["nome"]} - ${item["qtd"]}x R\$${item["preco"]} = R\$${item["preco"] * item["qtd"]}");
    });
    if (descontoAniversario) {
      print("Desconto de Aniversário: 10% aplicado!");
    }
    print("Subtotal: R\$${subtotal}");
    print("Total a pagar: R\$${total}");
    if (pg == 1) {
      print("Troco: R\$${troco}");
    }
    print("Obrigado pela compra, volte sempre!");

    // Pergunta se quer comprar novamente
    stdout.write("\nDeseja realizar uma nova compra? (S/N): ");
    continuar = stdin.readLineSync() ?? "N";
  }

  print("\nSistema encerrado. Até mais!");
}
