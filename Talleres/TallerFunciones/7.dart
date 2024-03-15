import 'dart:io';

void main(List<String> args) {
  print("ingresa una palabra que será separada");
  String palabra = stdin.readLineSync().toString();
  conteoVocales(palabra);
}

void conteoVocales(String palabra) {
  int conteoA = 0, conteoE = 0, conteoI = 0, ConteoO = 0, ConteoU = 0;
  var separar = [];

  separar = palabra.split(",");

  for (var i = 0; i < separar.length - 1; i++) {
    if (separar[i] == "a") {
      conteoA++;
    }
    if (separar[i] == "e") {
      conteoE++;
    }
    if (separar[i] == "i") {
      conteoI++;
    }
    if (separar[i] == "o") {
      ConteoO++;
    }
    if (separar[i] == "u") {
      ConteoU++;
    }
  }
  print(
      "cantidad de a: $conteoA \n e: $conteoE \n i: $conteoI \n o $ConteoO \n u $ConteoU");
}
