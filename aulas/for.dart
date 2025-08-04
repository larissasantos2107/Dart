import 'dart:io';

void main(){
  List<String> frutas = [];

  // FOR

//   for(int i=0; i <3; i++){
//     print("Digite sua fruta favorita: ");
//     String? fruta = stdin.readLineSync();
//     frutas.add(fruta!);
//   }
//   print("Suas frutas são $frutas");

// FOR EACH

List<String> genero = ["Terror", "Romance", "Comédia"];

for(String i in genero){
  print("Generos Disponíveis: $i");
}
 
 genero.forEach((String i) => print("$i"));
}