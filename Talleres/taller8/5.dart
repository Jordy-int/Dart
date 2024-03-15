import 'dart:io';

void main() {
  dynamic operacion, total;
  print("pasaje ");
  double valorPasaje = double.parse(stdin.readLineSync().toString());
  print("cantidad pasajeros ");
  int valorPasajeros = int.parse(stdin.readLineSync().toString());
  if (valorPasajeros < 300) {
    print("no hay ganancias");
    operacion = valorPasaje * valorPasajeros;
    print("valor a entregar " + operacion.toString());
  } else {
    if (valorPasajeros <= 500) {
      total = (((valorPasaje * valorPasajeros) * 20) / 100);
      print("chofer ganara $total");
      operacion = ((valorPasaje * valorPasajeros) - total);
      print("valor a entregar " + operacion.toString());
    } else {
      if (valorPasajeros > 500) {
        total = (((valorPasaje * valorPasajeros) * 30) / 100);
        print("chofer ganara $total");
        operacion = ((valorPasaje * valorPasajeros) - total);
        print("valor a entregar " + operacion.toString());
      }
    }
  }
}
