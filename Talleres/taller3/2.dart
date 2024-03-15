import 'dart:io';

void main(List<String> args) {
  int horaEntrada, horaSalida;
  print("hora de entrada del parqueadero");
  horaEntrada = int.parse(stdin.readLineSync().toString());

  print("hora de salida del parqueadero");
  horaSalida = int.parse(stdin.readLineSync().toString());

  int operacion = horaSalida - horaEntrada;
  print("el valor a pagar del estacionamiento es de: ${(((horaSalida-1)-horaEntrada) * 600) + 1000}");
}
