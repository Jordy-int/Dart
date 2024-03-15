import 'dart:io';

void main() {
  int suma = 0, pieza = 1;
  print("ingresar cuantas piezas a procesar");
  int piezas = int.parse(stdin.readLineSync().toString());
  while (pieza <= piezas) {
    print("longitud piezas ");
    print("longitud pieza");
    double l = double.parse(stdin.readLineSync().toString());
    if ((l >= 1.20) && (l <= 1.30)) {
      suma = suma + 1;
      pieza = pieza + 1;
    } else {
      pieza = pieza + 1;
    }
  }
  print("cantidad de piezas aptas son " + suma.toString());
}
