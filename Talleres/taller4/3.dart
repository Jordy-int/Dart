import 'dart:io';

void main(List<String> args) {
  int par, impar = 0;
  print("ingresa el numero inicial");
  int inicial = int.parse(stdin.readLineSync().toString());
  print("ingresa el numero final");
  int numfinal = int.parse(stdin.readLineSync().toString());

  for (var i = 0; i < numfinal; i++) {
    if (i % 2 != 0) {
      impar = impar + 1;
    }
  }
  print("la cantidad de impares encontrados es $impar");
}
