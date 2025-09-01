import 'dart:io';

class Conta {
  String nomeTitular;
  double saldo;
  double? investimento;

  Conta(this.nomeTitular, this.saldo, {this.investimento});

  void exibir() {
    print("Titular: $nomeTitular, Saldo: $saldo, Investimento: ${investimento ?? "Nenhum"}");
  }
}

class ContaCorrente extends Conta {
  double? limiteChequeEspecial;

  ContaCorrente(String nomeTitular, double saldo, {this.limiteChequeEspecial, double? investimento})
      : super(nomeTitular, saldo, investimento: investimento);
}

class ContaPoupanca extends Conta {
  double taxaRendimento;

  ContaPoupanca(String nomeTitular, double saldo, this.taxaRendimento, {double? investimento})
      : super(nomeTitular, saldo, investimento: investimento);

  void aplicarRendimento() {
    saldo = saldo + (saldo * (taxaRendimento / 100));
  }
}

void main() {
  print("\n");
  var contaCorrente = ContaCorrente("Larissa", 2000, limiteChequeEspecial: 1000, investimento: 3000);
  var contaPoupanca = ContaPoupanca("Deborah", 3000, 5);

  contaCorrente.exibir();
  print("Limite Cheque Especial: ${contaCorrente.limiteChequeEspecial}");
  
  print("\n");

  contaPoupanca.exibir();
  contaPoupanca.aplicarRendimento();
  print("Saldo após rendimento: ${contaPoupanca.saldo}");
}
