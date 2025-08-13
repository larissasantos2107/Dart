import 'dart:io';

// FOR EACH

void main(){
  
  List<String> alunos = [
    "Allison",
    "Brunna",
    "Deborah",
    "Geovana",
    "Jiulia",
    "Jonathan",
    "Larissa",
    "Lucas",
    "Maria Eduarda",
    "Maria Eloisa",
    "Nicole",
    "Rafael",
    "Vinicius"
    ];

  List<String> aluno = [];
  int contador = 0;

    alunos.forEach((String i){

    print("$i está na presente? (sim/nao)");
    String? resposta = stdin.readLineSync();

    if(resposta == "sim"){
      contador++;
      aluno.add(i);
    }
  });

  print("Quandidade de pessoas presentes: $contador");
  print("São elas: $aluno");

}