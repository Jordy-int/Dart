import 'dart:io';

void main() {
  print("ingresar cantidad de horas en el estacionamiento");
  int hrs = int.parse(stdin.readLineSync().toString());
  if (hrs == 1) {
    print("la cantidad a pagar es de 1000");
  }
  else {
    print("${(hrs-1)*800 + 1000}");
  }
}