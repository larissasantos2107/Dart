import "dart:io"; 

void main(){

print("Digite sua idade atual: ");

String? entrada = stdin.readLineSync();

int idade = int.parse(entrada!);

int soma = idade + 1;


print("sua idade atual é $idade, sua idade no proximo ano é: $soma" );
}