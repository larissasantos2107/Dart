import 'dart:io';

void main() {
  int? op;

  do {
    print("Escolha as opções: \n 1-Pix \n 2-Dinheiro \n 3-Cartão");
    String? entrada = stdin.readLineSync();
    op = int.tryParse(entrada ?? '');

    if (op == 1) {
      print("Pago com pix");
    } else if (op == 2) {
      print("Pago com Dinheiro");
    } else if (op == 3) {
      print("Pago com Cartão");
    } else {
      print("Opção inválida. Tente novamente.\n");
      op = null; 
    }
  } while (op == null);
}
