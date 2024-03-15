import 'dart:io';

void main(List<String> args) {
  print("Ingresar numero de entrada");
  String entrada = stdin.readLineSync().toString();
  print("ingresar posicion");
  String posicion = stdin.readLineSync().toString();

  imprimir(entrada, posicion);
}

void imprimir(String entrada, String posicion) {
  print("Entrada: $entrada");
  print("Posicion: $posicion");
}
