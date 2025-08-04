import 'dart:io';

void main(){
  List<String> frutas = [];

  for(int i=0; i <3; i++){
    print("Digite sua fruta favorita: ");
    String? fruta = stdin.readLineSync();
    frutas.add(fruta!);
  }
  print("Suas frutas são $frutas");
}