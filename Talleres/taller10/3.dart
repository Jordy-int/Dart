import 'dart:io';

void main() {
  double suma = 0, promedio = 0;
  int cantidad = 1;
  print("ingresar cantidad de personas");
  int cantidadPersonas = int.parse(stdin.readLineSync().toString());
  while (cantidad <= cantidadPersonas) {
    print("ingresar altura de personas");
    double al = double.parse(stdin.readLineSync().toString());
    suma = suma + al;
    cantidad = cantidad + 1;
  }
  promedio = suma / cantidadPersonas;
  print("la altura promedio es de: " + promedio.toString());
}
