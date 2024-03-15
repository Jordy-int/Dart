import 'dart:io';

void main(List<String> args) {
  int ContadorA = 0, ContadorE = 0, ContadorI = 0, ContadorO = 0, ContadorU = 0;

  var separarPalabra = [];
  print("ingresar palabra");
  String palabra = stdin.readLineSync().toString();
  separarPalabra = palabra.split('');

  separarPalabra.forEach((element) {
    switch (element) {
      case "a":
        ContadorA++;
        break;
      case "e":
        ContadorE++;
        break;
      case "i":
        ContadorI++;
        break;
      case "o":
        ContadorO++;
        break;
      case "u":
        ContadorU++;
        break;
    }
  });

  print(
      "Cantidad de a: $ContadorA \n Cantidad de e: $ContadorE \n Cantidad de i: $ContadorI \n Cantidad de o: $ContadorO \n Cantidad de u: $ContadorU");
}
