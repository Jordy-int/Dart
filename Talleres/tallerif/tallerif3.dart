import 'dart:io';

void main(List<String> args) {
  print("Voy a sumar, multiplicar y restar. \n Ingresa el primer número");
  int num1 = int.parse(stdin.readLineSync().toString());
  print("Ingresa el segundo número");
  int num2 = int.parse(stdin.readLineSync().toString());

  print("sum ${num1 + num2} \nresta: ${num1 - num2} \nmultiplicación: ${num1 * num2} ");
}