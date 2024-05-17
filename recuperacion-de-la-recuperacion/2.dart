import 'dart:io';

void main(List<String> args) {
  
  List<String> numero = [];
  List<int> ordenar = [];
  
  print("ingresa los números ganadores de la loteria");
  String numeroGanador = stdin.readLineSync().toString();

  numero = numeroGanador.split(" ");

  numero.forEach((element) {
    ordenar.add(int.parse(element));
  });

  ordenar.sort();
  ordenar = ordenar.reversed.toList();

  print("numeros ordenados de mayor a menor es: ");

  for (var element in ordenar) {
    print(element);
  }
}
