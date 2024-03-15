import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  print("ingresar el valor de compra");
  double valorCompra = double.parse(stdin.readLineSync().toString());
  print("ingresar descuento de compra");
  double descuento = double.parse(stdin.readLineSync().toString());

  double operacion = valorCompra - (valorCompra*(descuento/100));

  print("El valor de compra será: $operacion");
}