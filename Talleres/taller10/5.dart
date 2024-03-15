import 'dart:io';

void main() {
  int suma = 0, sumaOperacion = 0;
  int listaUno = 0, listaDos = 0;
  print("lista 1");
  while (listaUno <= 15) {
    print("escribe un valor ");
    int valor = int.parse(stdin.readLineSync().toString());
    suma = suma + valor;
    listaUno = listaUno + 1;
  }
  print("lista 2");
  while (listaDos <= 15) {
    print("escribe un valor ");
    int v2 = int.parse(stdin.readLineSync().toString());
    sumaOperacion = sumaOperacion + v2;
    listaDos = listaDos + 1;
  }
  if (suma > sumaOperacion) {
    print("lista 1 mayor");
  } else {
    if (sumaOperacion > suma) {
      print("lista 2 mayor");
    } else {
      print("listas iguales");
    }
  }
}
