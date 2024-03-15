import 'dart:io';

void main(List<String> args) {
  int valorPasaje, kmRecorridos, valorEstancia, dias;

  print("ingresar valor de pasaje");
  valorPasaje = int.parse(stdin.readLineSync().toString());
  print("ingresar kilometros recorridos");
  kmRecorridos = int.parse(stdin.readLineSync().toString());

  print("ingresar valor de estancia");
  valorEstancia = int.parse(stdin.readLineSync().toString());
  print("ingresar dias de estancia");
  dias = int.parse(stdin.readLineSync().toString());

  print(
      "el valor de pasaje por los kilometros recorridos es de: ${kmRecorridos * valorPasaje}");
  print("el valor de la estancia por los días es de: ${valorEstancia * dias}");
  print(
      "da un total de: ${(kmRecorridos * valorPasaje) + (valorEstancia * dias)}");
}