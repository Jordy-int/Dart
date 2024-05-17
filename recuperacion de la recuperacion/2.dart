import 'dart:io';

void main(List<String> args) {
  List<String> numero = [];
  List<String> mayor_a_Menor = [];
  String numeroSeparado = "";
  print("ingresa los números ganadores de la loteria");
  String numeroGanador = stdin.readLineSync().toString();

  numeroSeparado = numeroGanador.toString();
  numero = numeroSeparado.split(" ");

  numero.sort();
  mayor_a_Menor = numero.reversed.toList();

  print("numeros ordenados de mayor a menor es: ");

  for (var element in mayor_a_Menor) {
    print(element);
  }
}
