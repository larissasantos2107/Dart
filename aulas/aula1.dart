import "dart:io"; // Comando para importar as bibliotecas dart, se não tiver ele não vai rodar

void main(){ // função principal, sem ela não funciona o codigo

print("Digite seu nome: "); // porque todo input precisa de um print que acompanha, sem ela o terminal fica esperando alguma coisa.

String? nome = stdin.readLineSync();// garantir que esse variável não aceite número nulo, por isso necessário o ? na frente do tipo da variável | variável que recebe os dados digitados pelo usuário
print("Olá diva(o), seja bem vindo, seu nome é $nome");

}