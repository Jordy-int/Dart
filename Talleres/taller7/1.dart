import 'dart:io';

void main() {
  double total;
  print("edad");
  int edad = int.parse(stdin.readLineSync().toString());
  print("salario ");
  double salarioMinimo = double.parse(stdin.readLineSync().toString());
  print("recibe");
  double recibe = double.parse(stdin.readLineSync().toString());
  if (recibe > (salarioMinimo * 2) && edad > 30) {
    total = (((recibe * 12) * 20) / 100);
    print("pagar: $total");
  } else {
    if (recibe > salarioMinimo && edad > 50) {
      total = (((recibe * 12) * 10) / 100);
      print("pagar: $total");
    } else {
      print("no renta ");
    }
  }
}
