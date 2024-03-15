import 'dart:io';

void main() {
  dynamic operacion;
  print("Valor: ");
  int valorArticulo = int.parse(stdin.readLineSync().toString());

  if (valorArticulo > 2000000) {

    operacion = valorArticulo - ((valorArticulo * 20) / 100);
    print("precio $operacion ");

  } else {
    if (valorArticulo > 100000) {

      operacion = valorArticulo - ((valorArticulo * 10) / 100);
      print("precio: $operacion");

    } else {
      print("sin descuento");
    }
  }
}
