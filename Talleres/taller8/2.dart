import 'dart:io';

void main() {
  dynamic total;
  double kilometros;
  print("kilometros");
  kilometros = double.parse(stdin.readLineSync().toString());
  if (kilometros < 300) {
    total = (((300000) * 20) / 100) + 300000;
    print("pagar: $total");
  } else {
    if (kilometros > 300 && kilometros < 1000) {
      total = (((kilometros - 300) * 15000) + 300000) +
          ((((kilometros - 300) * 15000) + 300000) * 20 / 100);
      print("pagar: $total");
    } else {
      total = (((kilometros - 1000) * 10000) + 300000) +
          ((((kilometros - 1000) * 10000) + 300000) * 20 / 100);
      print("pagar: $total");
    }
  }
}
