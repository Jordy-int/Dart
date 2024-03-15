import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("ingresar el numero 1");
  int numero1 = int.parse(stdin.readLineSync().toString());

  print("ingresar el numero 2");
  int numero2 = int.parse(stdin.readLineSync().toString());

  cubo_entre_2_numero(numero1, numero2);
}

void cubo_entre_2_numero(int numero1, int numero2) {
  num resultado = pow((numero1 - numero2), 3);

  print("El cubo entre ambos numeros es $resultado");
}
