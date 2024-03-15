import 'dart:io';

void main(List<String> args) {
  print("ingresa un número");
  int numero = int.parse(stdin.readLineSync().toString());
}

void verificar_Numero(int numero) {
  if (numero < 0 && numero % 2 != 0) {
    print("el numero es negativo e impar");
  } else {
    if (numero > 0 && numero % 2 != 0) {
      print("el numero es positivo e impar");
    } else {
      if (numero < 0 && numero % 2 == 0) {
        print("el número es negativo y par");
      } else {
        print("el número es positivo y par");
      }
    }
  }
}
