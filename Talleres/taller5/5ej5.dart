import 'dart:io';

void main(List<String> args) {
  int suma = 0;
  print("ingresar numero inicial a sumar");
  int numInicial = int.parse(stdin.readLineSync().toString());

  print("ingresar numero inicial a sumar");
  int numFinal = int.parse(stdin.readLineSync().toString());

  for (int i = numInicial; i <= numFinal; i++) {
    suma += i;
  }

  print("la suma comprendida en ambos numeros es de $suma");
}
