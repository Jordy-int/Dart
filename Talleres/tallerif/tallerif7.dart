import 'dart:io';

void main(List<String> args) {
  print("Valor del pasaje");
  int valorPasaje = int.parse(stdin.readLineSync().toString());
  print("Numero de pasajeros");
  int pasajeros = int.parse(stdin.readLineSync().toString());
  print("La cantidad de dinero reunida es de ${valorPasaje*pasajeros}");
}