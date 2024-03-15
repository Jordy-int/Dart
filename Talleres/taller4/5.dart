import 'dart:io';

void main() {
  dynamic p;
  print("Valor del articulo: ");
  int val = int.parse(stdin.readLineSync().toString());
  if (val > 2000000) {
    p = val - ((val * 20) / 100);
    print("El precio es de " + p.toString());
  } else {
    if (val > 100000) {
      p = val - ((val * 10) / 100);
      print("El precio es de" + p.toString());
    } else {
      print("No tiene descuento");
    }
  }
}
