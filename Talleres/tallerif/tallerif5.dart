import 'dart:io';

void main(List<String> args) {
  print("ingresar salario");
  int salario = int.parse(stdin.readLineSync().toString());
  print("ingresar horas");
  int horas = int.parse(stdin.readLineSync().toString());

  print("salario total es de ${salario * horas}");
}