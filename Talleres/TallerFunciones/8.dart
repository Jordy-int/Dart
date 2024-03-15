import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int respuesta = 0;

  print("Que operación quieres hacer? \n");
  print("1. Multiplicacion");
  print("2. Suma");
  print("3. División");
  print("4. Potencia");
  print("5. Raíz");

  switch (respuesta) {
    case 1:
      print("\n ingresa el primer numero");
      int num1 = int.parse(stdin.readLineSync().toString());
      print("\n ingresa el segundo numero");
      int num2 = int.parse(stdin.readLineSync().toString());

      multiplicacion(num1, num2);
      break;
    case 2:
      print("\n ingresa el primer numero");
      int num1 = int.parse(stdin.readLineSync().toString());
      print("\n ingresa el segundo numero");
      int num2 = int.parse(stdin.readLineSync().toString());

      suma(num1, num2);
      break;
    case 3:
      print("\n ingresa el primer numero");
      int num1 = int.parse(stdin.readLineSync().toString());
      print("\n ingresa el segundo numero");
      int num2 = int.parse(stdin.readLineSync().toString());

      division(num1, num2);
      break;
    case 4:
      print("\n ingresa el primer numero");
      int num1 = int.parse(stdin.readLineSync().toString());
      print("\n ingresa el segundo numero");
      int num2 = int.parse(stdin.readLineSync().toString());

      potencia(num1, num2);
      break;
    case 5:
      print("\n ingresa el primer numero");
      int num1 = int.parse(stdin.readLineSync().toString());
      print("\n ingresa el segundo numero");
      int num2 = int.parse(stdin.readLineSync().toString());

      raiz(num1, num2);
      break;
    default:
  }
}

void multiplicacion(int num1, int num2) {
  print("resultado ${num1 * num2}");
}

void suma(int num1, int num2) {
  print("resultado ${num1 + num2}");
}

void resta(int num1, int num2) {
  print("resultado ${num1 - num2}");
}

void division(int num1, int num2) {
  print("resultado ${num1 / num2}");
}

void potencia(int num1, int num2) {
  print("resultado ${pow(num1, num2)}");
}

void raiz(int num1, int num2) {
  print("resultado del num1 ${sqrt(num1)} \n resultado num2 ${sqrt(num2)}");
}
